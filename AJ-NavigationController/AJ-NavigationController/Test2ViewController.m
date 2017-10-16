//
//  Test2ViewController.m
//  AJ-NavigationController
//
//  Created by Loovee on 2017/9/19.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "Test2ViewController.h"
#import "Test3ViewController.h"

@interface Test2ViewController ()

@end

@implementation Test2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"控制器2";
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.navigationController pushViewController:[Test3ViewController new] animated:YES];
    });
}


@end
