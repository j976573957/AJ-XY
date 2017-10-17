//
//  AJ-XY.h
//  AJ-XY
//
//  Created by Loovee on 2017/8/29.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#ifndef AJ_XY_h
#define AJ_XY_h

#import "UIColor+AJExtension.h"
#import "UIView+AJExtention.h"

/** 弱self */
#define AJ_weakSelf __weak typeof(self) weakSelf = self;

/** 一些常量 */
#define AJDefaultMargin 10
#define AJDefaultNV_Height 64

/** 屏幕宽高 */
#define AJScreenWidth [UIScreen mainScreen].bounds.size.width
#define AJScreenHeight [UIScreen mainScreen].bounds.size.height

/** RGB 颜色 */
#define AJColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

/** 纯色 */
#define AJPureColor(n) AJColor(n,n,n)

// 随机色
#define AJRandomColor AJColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

/** 判断是否是 iOS 7 */
#define iOS7 ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)
#define iOS11 ([[UIDevice currentDevice].systemVersion doubleValue] >= 11.0)


#ifdef DEBUG // 处于开发阶段
#define AJLog(...) NSLog(__VA_ARGS__)
#else // 处于发布阶段
#define AJLog(...)
#endif

#define AJLogFunc AJLog(@"%s", __func__)


#endif /* AJ_XY_h */
