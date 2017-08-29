//
//  UIBarButtonItem+AJExtention.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/29.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "UIBarButtonItem+AJExtention.h"

@implementation UIBarButtonItem (AJExtention)

+ (UIBarButtonItem *)aj_barButtonItemWithImage:(NSString *)image highlightImage:(NSString *)highlightImage target:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highlightImage] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    btn.aj_size = btn.currentImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}


@end
