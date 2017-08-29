//
//  UIColor+AJExtension.h
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 从十六进制字符串获取颜色(按位与) */
#define UIColorWithRGBA(color,al) ([UIColor colorWithRed:((color&0xff0000)>>16)/255. green:((color&0xff00)>>8)/255. blue:((color)&0xff)/255. alpha:al])
/** RGB */
#define AJRGBColor(r, g, b) AJRGBAColor((r), (g), (b), 1.f)
/** RGBA */
#define AJRGBAColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
/** 随机色 */
#define AJRandomColor AJRGBColor(arc4random_uniform(256.0), arc4random_uniform(256.0), arc4random_uniform(256.0))


@interface UIColor (AJExtension)

/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string;
/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string alpha:(CGFloat)alpha;

@end
