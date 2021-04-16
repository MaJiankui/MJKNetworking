//
//  UIButton+MJKMethods.h
//  WeatherReort
//
//  Created by Admin on 2021/4/16.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (MJKMethods)

- (void)showTitleShadow;
- (void)showTitleShadowWithShadowColor:(UIColor *)color;
- (void)showTitleShadowWithShadowOffset:(CGSize)offset;
- (void)showTitleShadowWithShadowColor:(UIColor *)color shadowOffset:(CGSize)offset;

@end

NS_ASSUME_NONNULL_END
