//
//  StarRateView.h
//  StarRateView
//
//  Created by MyMac on 15/10/27.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StarRateView;
@protocol StarRateViewDelegate <NSObject>

@optional
- (void)starRateView:(StarRateView *)starRateView sorcePercentDidChange:(CGFloat)newSorcePercent;

@end

@interface StarRateView : UIView

@property (nonatomic,copy) NSString *foreground_star_image_name;

@property (nonatomic,copy) NSString *background_star_image_name;

@property (nonatomic,assign) CGFloat scorePercent; /**< 得分值*/

@property (nonatomic,assign) BOOL hasAnimation;/**< 是否允许动画,默认为NO*/

@property (nonatomic,assign) BOOL allowIncompleteStar; /**< 评分时是否允许不是整星,默认为NO*/

@property (nonatomic,assign) NSUInteger numberOfStars;

@property (nonatomic,weak) id<StarRateViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame numberOfStars:(NSUInteger)numberOfStars;

@end
