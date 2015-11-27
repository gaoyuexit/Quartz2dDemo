//
//  progressView.m
//  progressView
//
//  Created by 郜宇 on 15/11/26.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView ()

@property (nonatomic, weak) UILabel *label;

@end




@implementation ProgressView


- (void)awakeFromNib
{
    UILabel *label = [[UILabel alloc] initWithFrame:self.bounds];
//    label.backgroundColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    [self addSubview:label];
    _label = label;
}




//当视图显示的时候会调用,但是默认只会调用一次
- (void)drawRect:(CGRect)rect {
    
    CGFloat lineW = 10;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
    CGFloat radius = self.bounds.size.height / 2 - lineW;
    // 以X轴正方向为默认的开始0点
    CGFloat startAngle = - M_PI_2;
    CGFloat endAngle = - M_PI_2 + self.progress * M_PI * 2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
    CGContextSetLineWidth(context, lineW);
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
}

- (void)setProgress:(float)progress
{
    _progress = progress;
    self.label.text = [NSString stringWithFormat:@"%.2f%%",progress * 100];
    //每次传进来进度的时候,重绘
    //在view上做一个重绘的标记,当下次屏幕刷新的时候,就会调用drawRect方法
    [self setNeedsDisplay];
}






@end
