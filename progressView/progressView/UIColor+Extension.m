//
//  UIColor+Extension.m
//  progressView
//
//  Created by 郜宇 on 15/11/27.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)


+ (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256);
    CGFloat g = arc4random_uniform(256);
    CGFloat b = arc4random_uniform(256);
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1];
}

@end
