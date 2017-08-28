//
//  UIColor+AJExtension.h
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (AJExtension)

/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string;
/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string alpha:(CGFloat)alpha;

@end
