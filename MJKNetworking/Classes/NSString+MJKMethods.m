//
//  NSString+MJKMethods.m
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import "NSString+MJKMethods.h"

@implementation NSString (MJKMethods)

+ (BOOL)isBlankString:(id)string {
    if (!string) {
        return YES;
    }
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

- (BOOL)isBlankString {
    return [NSString isBlankString:self];
}

- (NSString *)switchFormat:(NSString *)oldFormat toNewFormat:(NSString *)newFormat {
    
    NSDateFormatter *oldFormatter = [[NSDateFormatter alloc] init];
    [oldFormatter setDateFormat:oldFormat];
    NSDate *date = [oldFormatter dateFromString:self];
    
    NSDateFormatter *newFormatter = [[NSDateFormatter alloc] init];
    [newFormatter setDateFormat:newFormat];
    return [newFormatter stringFromDate:date];
}

- (NSTimeInterval)getTimeIntervalSinceNowWithFormat:(NSString *)format {
    
    NSTimeInterval _restTimeInterval = 0;
    if ([self isBlankString] == NO) {
        NSDate *endTimeDate = [NSDate dateWithString:self format:format];
        _restTimeInterval = [endTimeDate timeIntervalSinceNow];
    }
    if (_restTimeInterval < 0) {
        _restTimeInterval = 0;
    }
    
    return _restTimeInterval;
}

- (NSString *)phoneNumEncryption {
    if (self && self.length >= 11) {
        NSString *leadingSubStr = [self substringToIndex:3];
        NSString *trailingSubStr = [self substringFromIndex:self.length - 4];
        NSString *encryptionStr = @"****";
        NSString *result = [NSString stringWithFormat:@"%@%@%@",leadingSubStr,encryptionStr,trailingSubStr];
        
        return result;
    }
    return self;
    
}

- (NSString *)NonEmptyString {
    if (self == nil) {
        return @"";
    }
    if (self.length == 0) {
        return @"";
    }
    if ([self isEqualToString:@"null"] || [self isEqualToString:@"nil"]) {
        return @"";
    }
    return self;
}

@end
