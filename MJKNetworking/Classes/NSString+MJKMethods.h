//
//  NSString+MJKMethods.h
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+MJKMethods.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MJKMethods)

+ (BOOL)isBlankString:(id)string;

- (BOOL)isBlankString;

- (NSString *)switchFormat:(NSString *)oldFormat toNewFormat:(NSString *)newFormat;

- (NSTimeInterval)getTimeIntervalSinceNowWithFormat:(NSString *)format;

// 手机号码中间字符转换为 “*”
- (NSString *)phoneNumEncryption;

- (NSString *)NonEmptyString;

@end

NS_ASSUME_NONNULL_END
