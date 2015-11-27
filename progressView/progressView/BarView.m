//
//  BarView.m
//  progressView
//
//  Created by 郜宇 on 15/11/27.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "BarView.h"
#import "UIColor+Extension.h"
@implementation BarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // 设置总数为100
    // 数组中为占100的比例
    NSArray *data = @[@25,@25,@50];
    NSUInteger count = data.count;
    CGFloat w = rect.size.width / (2 * count - 1); // 每一个的宽度固定, (假设间隔和每个柱状图的宽度相等来计算的)
    CGFloat h = 0;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat viewH = rect.size.height;
    // 1.获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    for (int i = 0; i < count; i ++) {
        h = viewH * [data[i] floatValue] / 100.0;
        x = 2 * w * i;
        y = viewH - h;
        // 2.路径
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];
        [[UIColor randomColor] set];
        CGContextAddPath(ctx, path.CGPath);
        CGContextFillPath(ctx);
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
}




@end
