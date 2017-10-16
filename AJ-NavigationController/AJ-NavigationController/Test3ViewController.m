//
//  Test3ViewController.m
//  AJ-NavigationController
//
//  Created by Loovee on 2017/9/19.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "Test3ViewController.h"

@interface Test3ViewController ()

@end

@implementation Test3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"控制器1";
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
}


@end
