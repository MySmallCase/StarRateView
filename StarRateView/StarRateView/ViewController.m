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
    
    StarRateView *star = [[StarRateView alloc] initWithFrame:CGRectMake(10, 30, [UIScreen mainScreen].bounds.size.width - 60, 23) numberOfStars:8 backgroundImage:[UIImage imageNamed:@"store_detail_store_star_no"] foregroundImage:[UIImage imageNamed:@"store_detail_store_star_yes"]];
    star.scorePercent = 7.4;
    star.allowIncompleteStar = YES;
    star.hasAnimation = YES;
    star.delegate = self;
    [self.view addSubview:star];
    
}

- (void)starRateView:(StarRateView *)starRateView sorcePercentDidChange:(CGFloat)newSorcePercent{
    NSLog(@"%f",newSorcePercent);
}

@end
