//
//  MJKCountDownManger.h
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MJKMethods.h"

NS_ASSUME_NONNULL_BEGIN

@interface MJKCountDownManger : NSObject

@property (nonatomic, copy) void (^timeCountDownBlock) (MJKCountDownManger *manager, NSString *d, NSString *h, NSString *m, NSString *s);

/**
 自动计算时间间隔, 默认 1s
 */
@property (nonatomic, assign) NSTimeInterval autoTimInterval;

// 单位秒，倒计时剩余总时长
@property (nonatomic, assign) NSTimeInterval totalTimInterval;
// yyyy-dd-
@property (nonatomic, strong) NSString *endTimeStr;

/**
 刷新
 */
- (void)freshCarousel;

/**
 暂停后,可以调用改方法继续
 */
- (void)resumePlay;

/**
 暂停
 */
- (void)pause;

/**
 如果开启,销毁前需要调用该方法,释放定时器.否则可能内存泄漏
 */
- (void)releaseTimer;

@end

NS_ASSUME_NONNULL_END
