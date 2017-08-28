//
//  UIColor+AJExtension.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/28.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "UIColor+AJExtension.h"

@implementation UIColor (AJExtension)

/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string
{
    return [self aj_colorWithHex:string alpha:1.f];
}

/** 从十六进制字符串获取颜色 */
+ (UIColor *)aj_colorWithHex:(NSString *)string alpha:(CGFloat)alpha
{
    //删除字符串中的空格
    
    NSString *str_color = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    return nil;
}

@end
