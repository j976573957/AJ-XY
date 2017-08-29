//
//  UIBarButtonItem+AJExtention.h
//  AJ-XY
//
//  Created by Loovee on 2017/8/29.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (AJExtention)


/** 创建barButtonItem */
+ (UIBarButtonItem *)aj_barButtonItemWithImage:(NSString *)image highlightImage:(NSString *)highlightImage target:(id)target action:(SEL)action title:(NSString *)title;

@end
