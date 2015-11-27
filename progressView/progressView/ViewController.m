//
//  ViewController.m
//  progressView
//
//  Created by 郜宇 on 15/11/26.
//  Copyright © 2015年 郜宇. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet ProgressView *progressView;

- (IBAction)sliderAction:(UISlider *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

- (IBAction)sliderAction:(UISlider *)sender {
    NSLog(@"%.2f",sender.value);
    self.progressView.progress = sender.value;
}
@end
