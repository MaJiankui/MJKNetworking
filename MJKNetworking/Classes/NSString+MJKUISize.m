//
//  NSString+MJKUISize.m
//  MJKNetworking_Example
//
//  Created by Admin on 2021/3/24.
//  Copyright © 2021 MaJiankui. All rights reserved.
//

#import "NSString+MJKUISize.h"

@implementation NSString (MJKUISize)

- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font
{
    return [self textSizeIn:size font:font breakMode:NSLineBreakByWordWrapping];
}

- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font breakMode:(NSLineBreakMode)breakMode
{
    return [self textSizeIn:size font:font breakMode:NSLineBreakByWordWrapping align:NSTextAlignmentLeft];
}

- (CGSize)textSizeIn:(CGSize)size font:(UIFont *)font breakMode:(NSLineBreakMode)abreakMode align:(NSTextAlignment)alignment
{
    NSLineBreakMode breakMode = abreakMode;
    
    CGSize contentSize = CGSizeZero;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = breakMode;
    paragraphStyle.alignment = alignment;
    
    NSDictionary* attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle};
    contentSize = [self boundingRectWithSize:size options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading) attributes:attributes context:nil].size;
    contentSize = CGSizeMake((int)contentSize.width + 1, (int)contentSize.height + 1);
    
    return contentSize;
}

@end
