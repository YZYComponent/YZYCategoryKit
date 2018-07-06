//
//  UIView+Round.h
//  EnglishWeekly
//
//  Created by xyhuang2 on 2017/6/8.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Round)

- (CAShapeLayer *)roundWithCorners:(UIRectCorner)corner radius:(CGFloat)radius;

@end
