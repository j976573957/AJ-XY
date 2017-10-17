//
//  UIView+AJExtention.m
//  AJ-XY
//
//  Created by Loovee on 2017/8/29.
//  Copyright © 2017年 AJ.com. All rights reserved.
//

#import "UIView+AJExtention.h"

@implementation UIView (AJExtention)

- (void)setAj_x:(CGFloat)aj_x
{
    CGRect tempRect = self.frame;
    tempRect.origin.x = aj_x;
    self.frame = tempRect;
}

- (CGFloat)aj_x
{
    return self.frame.origin.x;
}

- (void)setAj_y:(CGFloat)aj_y
{
    CGRect tempRect = self.frame;
    tempRect.origin.y = aj_y;
    self.frame = tempRect;
}

- (CGFloat)aj_y
{
    return self.frame.origin.y;
}

- (void)setAj_centerX:(CGFloat)aj_centerX
{
    CGPoint tempPoint = self.center;
    tempPoint.x = aj_centerX;
    self.center = tempPoint;
}

- (CGFloat)aj_centerX
{
    return self.center.x;
}

- (void)setAj_centerY:(CGFloat)aj_centerY
{
    CGPoint tempPoint = self.center;
    tempPoint.y = aj_centerY;
    self.center = tempPoint;
}

- (CGFloat)aj_centerY
{
    return self.center.y;
}

- (void)setAj_width:(CGFloat)aj_width
{
    CGRect tempRect = self.frame;
    tempRect.size.width = aj_width;
    self.frame = tempRect;
}

- (CGFloat)aj_width
{
    return self.frame.size.width;
}

- (void)setAj_height:(CGFloat)aj_height
{
    CGRect tempRect = self.frame;
    tempRect.size.height = aj_height;
    self.frame = tempRect;
}

- (CGFloat)aj_height
{
    return self.frame.size.height;
}

- (void)setAj_size:(CGSize)aj_size
{
    CGRect tempRect = self.frame;
    tempRect.size = aj_size;
    self.frame = tempRect;
}

- (CGSize)aj_size
{
    return self.frame.size;
}



@end
