//
//  DrawImageView.m
//  progressView
//
//  Created by 郜宇 on 15/11/27.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "DrawImageView.h"

@implementation DrawImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIImage *img = [UIImage imageNamed:@"1.jpg"];
//    [img drawAtPoint:CGPointZero blendMode:kCGBlendModeScreen alpha:1]; 
//    [img drawAtPoint:CGPointZero]; // 只是将图片放到该点,图片大小样式不变
//    [img drawInRect:rect];
    
    // 裁剪
    // 设置裁剪区域,超出裁剪区域的都会被裁剪掉
    UIRectClip(CGRectMake(0, 0, 200, 60));
    
    [img drawAsPatternInRect:rect]; //平铺

    
}


@end
