//
//  UILabel+VerticalAlign.h
//  EWTeacher_iOS
//
//  Created by iflytek on 16/9/22.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (VerticalAlign)

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font;

+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

+ (CGFloat)getHeightByWidth:(CGFloat)width attributedString:(NSAttributedString *)attributedStr font:(UIFont *)font;

@end
