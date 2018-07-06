//
//  UIView+Round.m
//  EnglishWeekly
//
//  Created by xyhuang2 on 2017/6/8.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "UIView+Round.h"

@implementation UIView (Round)

- (CAShapeLayer *)roundWithCorners:(UIRectCorner)corner radius:(CGFloat)radius {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *mask = [[CAShapeLayer alloc]init];
    mask.frame = self.bounds;
    mask.path = path.CGPath;
    self.layer.mask = mask;
    return mask;
}

@end
