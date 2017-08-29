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
    string = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    //string 6 或 8
    if (string.length < 6) {
        return [UIColor clearColor];
    }
    //0x 开头
    if ([string hasPrefix:@"0X"]) {
        string = [string substringFromIndex:2];
    }
    //# 开头
    if ([string hasPrefix:@"#"]) {
        string = [string substringFromIndex:1];
    }
    if (string.length != 6) {
        return [UIColor clearColor];
    }
    //
    NSUInteger loc = 0;
    NSUInteger len = 2;
    NSRange range = NSMakeRange(loc, len);
    //r
    NSString *rStr = [string substringWithRange:range];
    //g
    NSString *gStr = [string substringWithRange:range];
    //b
    NSString *bStr = [string substringWithRange:range];
    //scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rStr] scanHexInt:&r];
    [[NSScanner scannerWithString:gStr] scanHexInt:&g];
    [[NSScanner scannerWithString:bStr] scanHexInt:&b];
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
    
}

@end
