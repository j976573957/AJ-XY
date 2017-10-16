//
//  ViewController.m
//  AJ-NavigationController
//
//  Created by Loovee on 2017/9/18.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "ViewController.h"
#import "Test1ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";//有tabBar 的时候才有用
//    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor blueColor];
    
    //nv
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController pushViewController:[Test1ViewController new] animated:YES];
    });
}

@end
