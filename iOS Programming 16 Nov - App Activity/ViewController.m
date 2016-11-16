//
//  ViewController.m
//  iOS Programming 16 Nov - App Activity
//
//  Created by Jeremia Muhia on 11/16/16.
//  Copyright © 2016 NYU. All rights reserved.
//

#import "ViewController.h"
#import "BoxView.h"

@interface ViewController ()

@property BoxView * boxView;

@end

@implementation ViewController

@synthesize boxView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor brownColor];
    
    boxView = [[BoxView alloc] initWithFrame:CGRectMake(120, 200, 90, 90)];
    boxView.backgroundColor = [UIColor yellowColor];
    
    UIGraphicsBeginImageContext(CGSizeMake(20, 20));
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(ctx);
    CGContextAddArc(ctx, 10, 10, 10, 0, 2*M_PI, 1);
    
    CGContextSetFillColorWithColor(ctx, [[UIColor blackColor] CGColor]);
    
    CGContextFillPath(ctx);
    
    UIImage * blackBall = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView * leftEyeView = [[UIImageView alloc] initWithImage:blackBall];
    leftEyeView.center = CGPointMake(25, 20);
    
    [boxView addSubview:leftEyeView];
    
    UIImageView * rightEyeView = [[UIImageView alloc] initWithImage:blackBall];
    rightEyeView.center = CGPointMake(65, 20);
    
    [boxView addSubview:rightEyeView];
    
    UIImageView * mouthView = [[UIImageView alloc] initWithImage:blackBall];
    mouthView.center = CGPointMake(45, 60);
    
    [boxView addSubview:mouthView];
    
    [self.view addSubview:boxView];
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch * touch = touches.anyObject;
    CGPoint touchPoint = [touch locationInView:self.view];
    
    [UIView beginAnimations:@"square" context:nil];
    boxView.center = touchPoint;
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
