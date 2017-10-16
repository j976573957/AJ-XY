//
//  AJTabBar.m
//  AJ-XY
//
//  Created by Loovee on 2017/10/16.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJTabBar.h"

@implementation AJTabBar

/** 初始化 */
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //添加play按钮
        UIButton *playBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:playBtn];
        [playBtn setImage:[UIImage imageNamed:@"tabbar_np_playnon"] forState:UIControlStateNormal];
        [playBtn setBackgroundImage:[UIImage imageNamed:@"tabbar_np_playshadow"] forState:UIControlStateNormal];
        [playBtn addTarget:self action:@selector(playButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


/** 播放按钮点击 */
- (void)playButtonClicked
{//TODO:播放按钮点击
    
}


@end
