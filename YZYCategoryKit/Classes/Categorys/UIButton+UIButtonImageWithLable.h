//
//  UIButton+UIButtonImageWithLable.h
//  EnglishWeekly
//
//  Created by admin on 14/11/18.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

///UIButton 布局相关操作
@interface UIButton (UIButtonImageWithLable)

- (void)centerImageAndTitle:(float)spacing;
- (void)centerImageAndTitle;
- (void)setImage:(UIImage *)image withTitle:(NSString *)title forState:(UIControlState)stateType;
- (void)horizonImageAndTitleWithSpacing:(CGFloat)spacing;
- (void)horizonImageAndTitle;

@end
