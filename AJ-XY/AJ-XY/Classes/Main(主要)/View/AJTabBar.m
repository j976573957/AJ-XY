//
//  AJTabBar.m
//  AJ-XY
//
//  Created by Loovee on 2017/10/16.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "AJTabBar.h"

@interface AJTabBar ()

/** play 按钮 */
@property (nonatomic, weak) UIButton *playBtn;

@end

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
        playBtn.aj_size = playBtn.currentBackgroundImage.size;
        self.playBtn = playBtn;
    }
    return self;
}

/** 布局子控件 */
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //1.设置play按钮位置
    self.playBtn.aj_centerX = AJScreenWidth * .5;
    self.playBtn.aj_centerY = self.aj_height * .3;
    
    //2.设置其他tabbarButton的位置和尺寸
    CGFloat btnW = AJScreenWidth / 5;
    NSUInteger tabBarButtonIndex = 0;
    for (UIView *av in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([av isKindOfClass:class]) {
            //宽
            av.aj_width = btnW;
            //x
            av.aj_x = tabBarButtonIndex * btnW;
            av.aj_y = 8;
            //增加索引
            tabBarButtonIndex++;
            if (tabBarButtonIndex == 2) {
                tabBarButtonIndex++;
            }
            
        }
    }
}


/** 播放按钮点击 */
- (void)playButtonClicked
{//TODO:播放按钮点击
    AJLogFunc;
}


@end
