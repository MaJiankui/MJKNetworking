//
//  UILabel+MJKMethods.m
//  WeatherReort
//
//  Created by Admin on 2021/4/16.
//

#import "UILabel+MJKMethods.h"

@implementation UILabel (MJKMethods)

- (void)showTitleShadow {
    [self showTitleShadowWithShadowColor:[UIColor lightGrayColor]
                            shadowOffset:CGSizeMake(1, 1)];
}

- (void)showTitleShadowWithShadowColor:(UIColor *)color {
    [self showTitleShadowWithShadowColor:color
                            shadowOffset:CGSizeMake(1, 1)];
}

- (void)showTitleShadowWithShadowOffset:(CGSize)offset {
    [self showTitleShadowWithShadowColor:[UIColor lightGrayColor]
                            shadowOffset:offset];
}

- (void)showTitleShadowWithShadowColor:(UIColor *)color
                          shadowOffset:(CGSize)offset {
    
    NSString *titleStr = self.text;
    
    // 按钮标题添加阴影
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:titleStr];
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowBlurRadius = 1.0;
    shadow.shadowOffset = offset;
    shadow.shadowColor = color;
    [attributedStr addAttribute:NSShadowAttributeName value:shadow range:NSMakeRange(0, attributedStr.length)];
    
    self.attributedText = attributedStr;
}

@end
