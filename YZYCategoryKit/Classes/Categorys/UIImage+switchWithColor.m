//
//  UIImage+switchWithColor.m
//  EnglishWeekly
//
//  Created by iflytek on 17/4/18.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "UIImage+switchWithColor.h"

@implementation UIImage (switchWithColor)

//  颜色转换为背景图片
- (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
