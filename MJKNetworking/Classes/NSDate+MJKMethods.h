//
//  NSDate+MJKMethods.h
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (MJKMethods)

+ (NSDate *)dateWithString:(NSString *)dateString format:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
