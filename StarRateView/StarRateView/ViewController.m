//
//  ViewController.m
//  StarRateView
//
//  Created by MyMac on 15/10/27.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "ViewController.h"

#import "StarRateView.h"

@interface ViewController ()<StarRateViewDelegate>

@property (nonatomic,strong) StarRateView *star;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    StarRateView *star = [[StarRateView alloc] initWithFrame:CGRectMake(10, 30, [UIScreen mainScreen].bounds.size.width - 60, 23) numberOfStars:8];
    
    
//    StarRateView *star = [[StarRateView alloc] init];
//    star.frame = CGRectMake(10, 30, [UIScreen mainScreen].bounds.size.width - 60, 23);
    
    star.scorePercent = 8;
//    star.allowIncompleteStar = YES;
    star.hasAnimation = YES;
    star.delegate = self;
    [self.view addSubview:star];
    
}

- (void)starRateView:(StarRateView *)starRateView sorcePercentDidChange:(CGFloat)newSorcePercent{
    NSLog(@"%f",newSorcePercent);
}

- (StarRateView *)star{
    if (!_star) {
        _star = [[StarRateView alloc] init];
        _star.allowIncompleteStar = YES;
        _star.hasAnimation = YES;
        _star.delegate = self;
    }
    return _star;
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    
    self.star.frame = CGRectMake(10, 30, [UIScreen mainScreen].bounds.size.width - 60, 23);
    
}

@end
