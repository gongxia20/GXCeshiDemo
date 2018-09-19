//
//  GXBaseViewController.m
//  GXCeshiDemo
//
//  Created by James on 2018/9/17.
//  Copyright © 2018年 TZ. All rights reserved.
//

#import "GXBaseViewController.h"

@interface GXBaseViewController ()

@end

@implementation GXBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(100, 100, 200, 200);
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(UIButton *)sender {
    GXBaseViewController *baseVC = [GXBaseViewController new];
    // 隐藏push出来的tabbar
    baseVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:baseVC animated:YES];
}

@end
