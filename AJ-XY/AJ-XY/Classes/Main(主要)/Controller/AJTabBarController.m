//
//  AJTabBarController.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJTabBarController.h"
#import "AJNavViewController.h"

@interface AJTabBarController ()

@end

@implementation AJTabBarController

#pragma mark - 入口
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//TODO:创建子控制器
/** 创建子控制器 */
- (void)addChildVC:(UIViewController *)childVC image:(NSString *)image selectedImage:(NSString *)selImage title:(NSString *)title
{
    childVC.title = title;
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor ]
    [childVC.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    NSMutableDictionary *attrs_sel = [NSMutableDictionary dictionary];
    [childVC.tabBarItem setTitleTextAttributes:attrs_sel forState:UIControlStateSelected];
    
    childVC.tabBarItem.image = [UIImage imageNamed:image];
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0) {
        childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }else childVC.tabBarItem.selectedImage = [UIImage imageNamed:selImage];
    AJNavViewController *nv = [[AJNavViewController alloc] initWithRootViewController:childVC];
    [self addChildViewController:nv];
}

@end
