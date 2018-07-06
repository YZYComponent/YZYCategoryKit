//
//  UIView+SuperController.m
//  EnglishWeekly
//
//  Created by Yan on 2018/6/19.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import "UIView+SuperController.h"

@implementation UIView (SuperController)
/**
 *  获取父视图的控制器
 *
 *  @return 父视图的控制器
 */
- (UIViewController *)getViewController
{
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}
@end
