//
//  LoadingView.h
//  CommonPro
//
//  Created by zw on 2018/1/31.
//  Copyright © 2018年 zw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadingView : UIView

@property (nonatomic, assign) BOOL isShow;

+(instancetype)showLoadingViewInView:(UIView *)view;

-(void)hide;

@end
