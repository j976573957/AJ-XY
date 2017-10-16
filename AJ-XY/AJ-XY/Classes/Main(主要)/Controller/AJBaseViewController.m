//
//  AJBaseViewController.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/29.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJBaseViewController.h"

@interface AJBaseViewController ()

@end

@implementation AJBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor aj_colorWithHex:@"0xf3f3f3"];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;//导航栏不透明
    
}

@end
