//
//  ViewController.m
//  LoadingViewDemo
//
//  Created by zw on 2018/2/26.
//  Copyright © 2018年 zw. All rights reserved.
//

#import "ViewController.h"
#import "SDKDemoA.h"

@interface ViewController ()

@property (nonatomic, strong) LoadingView *loadingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *showButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [showButton setTitle:@"show" forState:UIControlStateNormal];
    showButton.backgroundColor = [UIColor greenColor];
    showButton.frame = CGRectMake(0, 400, 60, 40);
    [showButton addTarget:self action:@selector(showLoading) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showButton];
    
    UIButton *hideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [hideButton setTitle:@"hide" forState:UIControlStateNormal];
    hideButton.backgroundColor = [UIColor greenColor];
    hideButton.frame = CGRectMake(100, 400, 60, 40);
    [hideButton addTarget:self action:@selector(cancelLoading) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:hideButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showLoading
{
    
    _loadingView = [LoadingView showLoadingViewInView:self.view];
}

-(void)cancelLoading
{
    [_loadingView hide];
}


@end
