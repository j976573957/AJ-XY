//
//  Test1ViewController.m
//  AJ-NavigationController
//
//  Created by Loovee on 2017/9/19.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "Test1ViewController.h"
#import "Test2ViewController.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"控制器1";
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
         [self.navigationController pushViewController:[Test2ViewController new] animated:YES];
    });
}

@end
