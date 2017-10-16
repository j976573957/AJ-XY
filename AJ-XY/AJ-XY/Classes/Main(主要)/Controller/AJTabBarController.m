//
//  AJTabBarController.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJTabBarController.h"
#import "AJNavViewController.h"
#import "AJDiscoverViewController.h"
#import "AJSubscriptionViewController.h"
#import "AJPlayViewController.h"
#import "AJDownloadViewController.h"
#import "AJMineViewController.h"

@interface AJTabBarController ()

@end

@implementation AJTabBarController

#pragma mark - 入口
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 1.初始化子控制器 */
    [self setupChildViewControllers];
    
    /** 2.更换系统tabard */
    
    
}

/** 初始化子控制器 */
- (void)setupChildViewControllers
{//TODO:初始化子控制器
    [self addChildVC:[AJDiscoverViewController new] image:@"tabbar_find_n" selectedImage:@"tabbar_find_h" title:@"发现"];
    [self addChildVC:[AJDiscoverViewController new] image:@"tabbar_sound_n" selectedImage:@"tabbar_sound_h" title:@"订阅听"];
    [self addChildVC:[AJDiscoverViewController new] image:@"tabbar_download_n" selectedImage:@"tabbar_download_h" title:@"下载听"];
    [self addChildVC:[AJDiscoverViewController new] image:@"tabbar_me_n" selectedImage:@"tabbar_me_h" title:@"我的"];
}


//TODO:创建子控制器
/** 创建子控制器 */
- (void)addChildVC:(UIViewController *)childVC image:(NSString *)image selectedImage:(NSString *)selImage title:(NSString *)title
{
    childVC.navigationItem.title = title;
//    //普通状态文字
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSForegroundColorAttributeName] = [UIColor aj_colorWithHex:@"0x313131"];
//    [childVC.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
//    //选中状态文字
//    NSMutableDictionary *attrs_sel = [NSMutableDictionary dictionary];
//    attrs_sel[NSForegroundColorAttributeName] = [UIColor aj_colorWithHex:@"0xf75355"];
//    [childVC.tabBarItem setTitleTextAttributes:attrs_sel forState:UIControlStateSelected];
    //图片
    childVC.tabBarItem.image = [UIImage imageNamed:image];
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }else childVC.tabBarItem.selectedImage = [UIImage imageNamed:selImage];
    AJNavViewController *nv = [[AJNavViewController alloc] initWithRootViewController:childVC];
    [self addChildViewController:nv];
}

@end
