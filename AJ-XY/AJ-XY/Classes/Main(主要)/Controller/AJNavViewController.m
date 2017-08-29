//
//  AJNavViewController.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJNavViewController.h"
#import "UIBarButtonItem+AJExtention.h"

@interface AJNavViewController ()

@end

@implementation AJNavViewController

/** 当第一次使用这个类的时候调用 */
+ (void)initialize
{
    //设置标题属性
    UINavigationBar *barItem = [UINavigationBar appearance];
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:18];
    attrs[NSForegroundColorAttributeName] = [UIColor aj_colorWithHex:@"0x333333"];
    [barItem setTitleTextAttributes:attrs];
    [barItem setTintColor:[UIColor aj_colorWithHex:@"0x333333"]];
    
}

#pragma mark - 入口
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/** 拦截push进来的控制器 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {//不是根控制器
        //自动隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
        //设置左边上的nv按钮
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem aj_barButtonItemWithImage:@"btn_back_n" highlightImage:@"btn_back_n" target:self action:@selector(back) title:nil];
    }
    [super pushViewController:viewController animated:animated];
    
}

/** 导航栏返回按钮点击事件 */
- (void)back
{
    [self popViewControllerAnimated:YES];
}

@end
