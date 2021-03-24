//
//  MJKCountDownManger.m
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import "MJKCountDownManger.h"

@interface MJKCountDownManger ()

/**
 倒计时是否暂停
 */
@property (nonatomic, assign) BOOL  isPause;
@property (nonatomic, assign) NSTimeInterval remainingTimInterval;

@end

@implementation MJKCountDownManger

- (instancetype)init {
    self = [super init];
    if (self) {
        _autoTimInterval = 1;
        _totalTimInterval = 1000;
    }
    return self;
}

- (void)dealloc {
    [self releaseTimer];
}

- (void)setTotalTimInterval:(NSTimeInterval)totalTimInterval {
    _totalTimInterval = totalTimInterval;
    _remainingTimInterval = _totalTimInterval;
    [self updateTimeView];
    [self resumePlay];
}

- (void)setEndTimeStr:(NSString *)endTimeStr {
    
    _endTimeStr = endTimeStr;
    
    NSTimeInterval tempInterval = 0;
    
    tempInterval = [_endTimeStr getTimeIntervalSinceNowWithFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    self.totalTimInterval = tempInterval;
}

#pragma mark - action -

- (void)freshCarousel {
    NSLog(@"fresh carousel");
}

- (void)play {
    [self stop];
    if(self.isPause) {
        return;
    }
    [self performSelector:@selector(nextCell) withObject:nil afterDelay:self.autoTimInterval];
}

- (void)stop {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(nextCell) object:nil];
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (void)resumePlay {
    self.isPause = NO;
    [self play];
}

- (void)pause {
    self.isPause = YES;
    [self stop];
}

- (void)releaseTimer {
    [self stop];
}

- (NSInteger)numbers {
    if(self.totalTimInterval) {
        return self.totalTimInterval;
    }
    return 0;
}

- (void)nextCell {
    
    if([self numbers] <= 0) {
        return;
    }
    self.remainingTimInterval--;
    [self updateTimeView];
    
    if (self.remainingTimInterval <= 0) {
        [self stop];
    }else {
        [self performSelector:@selector(nextCell) withObject:nil afterDelay:self.autoTimInterval];
    }
}

- (void)updateTimeView {
    if (self.remainingTimInterval >= 0) {
        
        int totalTime = (int)self.remainingTimInterval;
        
        int day = totalTime / (60 * 60 * 24);
        totalTime = totalTime - day * (60 * 60 *24);
        
        int hour = totalTime / (60 * 60);
        
        totalTime = totalTime - hour * (60 * 60);
        int minute = totalTime / 60;
        
        totalTime = totalTime - minute * 60;
        int second = totalTime;
        
        NSString *dayStr = [NSString stringWithFormat:@"%i",day];
        NSString *hourStr = [NSString stringWithFormat:@"%i",hour];
        NSString *minuteStr = [NSString stringWithFormat:@"%i",minute];
        NSString *secondStr = [NSString stringWithFormat:@"%i",second];
        
        NSString *resultHourStr = [self getTowLengStringWith:hourStr];
        NSString *resultMinuteStr = [self getTowLengStringWith:minuteStr];
        NSString *resultSecondStr = [self getTowLengStringWith:secondStr];
        
        if (self.timeCountDownBlock) {
            self.timeCountDownBlock(self, dayStr, resultHourStr, resultMinuteStr, resultSecondStr);
        }
    }
}

// 不足两位前边补0
- (NSString *)getTowLengStringWith:(NSString *)timeStr {
    
    NSString *temStr = [NSString stringWithFormat:@"00%@",timeStr];
    
    NSString *resultStr = [temStr substringFromIndex:temStr.length-2];
    
    return resultStr;
}

@end
