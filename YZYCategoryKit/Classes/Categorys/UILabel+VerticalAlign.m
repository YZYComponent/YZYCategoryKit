//
//  UILabel+VerticalAlign.m
//  EWTeacher_iOS
//
//  Created by iflytek on 16/9/22.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import "UILabel+VerticalAlign.h"

@implementation UILabel (VerticalAlign)

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont *)font
{
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = title;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 0)];
    label.text = title;
    label.font = font;
    [label sizeToFit];
    return label.frame.size.width;
}

+ (CGFloat)getHeightByWidth:(CGFloat)width attributedString:(NSAttributedString *)attributedStr font:(UIFont *)font
{
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.attributedText = attributedStr;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}


@end
