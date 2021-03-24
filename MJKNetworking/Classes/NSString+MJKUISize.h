//
//  NSString+MJKUISize.h
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MJKUISize)

- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font;
- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font breakMode:(NSLineBreakMode)breakMode;
- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font breakMode:(NSLineBreakMode)breakMode align:(NSTextAlignment)alignment;

@end

NS_ASSUME_NONNULL_END
