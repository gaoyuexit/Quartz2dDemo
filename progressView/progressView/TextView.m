//
//  TextView.m
//  progressView
//
//  Created by 郜宇 on 15/11/27.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "TextView.h"

@implementation TextView

// Only override drawRect: if you perform custom drawing.

- (void)drawRect:(CGRect)rect {
   
    NSString *text = @"hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello world";
    NSDictionary *dict = @{
                           NSFontAttributeName : [UIFont systemFontOfSize:15],
                           NSForegroundColorAttributeName : [UIColor redColor],
                           NSStrokeWidthAttributeName : @2
                           };
    // 画在点处的位置,不可以换行
//    [text drawAtPoint:CGPointZero withAttributes:dict];
    // 画在Rect中的,根据Rect边界换行
    [text drawInRect:rect withAttributes:dict];
}


@end
