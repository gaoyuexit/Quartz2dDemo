//
//  PieView.m
//  progressView
//
//  Created by 郜宇 on 15/11/27.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "PieView.h"
#import "UIColor+Extension.h"
@implementation PieView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSArray *data = @[@25,@25,@50];
    // 上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
    CGFloat radius = self.bounds.size.height / 2;
    CGFloat startA = 0;
    CGFloat endA = 0;
    for (NSNumber *number in data) {
        // 路径
        startA = endA;
        endA = startA + number.floatValue / 100 * M_PI * 2;
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
        [path addLineToPoint:center];
        
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
