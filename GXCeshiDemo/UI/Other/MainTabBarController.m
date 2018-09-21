//
//  MainTabBarController.m
//  GXCeshiDemo
//
//  Created by James on 2018/9/17.
//  Copyright © 2018年 TZ. All rights reserved.
//

#import "MainTabBarController.h"
#import "GXNavigationViewController.h"
#import "HomePageViewController.h"
#import "DiscoveryViewController.h"
#import "VIPMemberViewController.h"
#import "PlanetViewController.h"
#import "MyPageViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 1.设置数组
    NSArray *array = @[@"首页", @"发现", @"VIP会员",@"星球",@"我的"];
    
    // 2.初始化控制器
    self.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:[HomePageViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[DiscoveryViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[VIPMemberViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[PlanetViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[MyPageViewController new]]];
    
    // 3.设置子控制器
    for (int i = 0; i < self.viewControllers.count; ++i) {
        UIViewController *vc = self.viewControllers[i];
        vc.tabBarItem.title = array[i];
    }
    NSLog(@"---");
}

@end
