//
//  UIViewController+Super.m
//  EnglishWeekly
//
//  Created by Yan on 2018/5/18.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import "UIViewController+Super.h"

@implementation UIViewController (Super)
//获取Window当前显示的ViewController
+ (UIViewController*)currentViewController{

    for (UIWindow *window in [UIApplication sharedApplication].windows.reverseObjectEnumerator) {
            
            UIView *tempView = window.subviews.lastObject;
            
            for (UIView *subview in window.subviews.reverseObjectEnumerator) {
                if ([subview isKindOfClass:NSClassFromString(@"UILayoutContainerView")]) {
                    tempView = subview;
                    break;
                }
            }
            
        BOOL(^canNext)(UIResponder *) = ^(UIResponder *responder){
                if (![responder isKindOfClass:[UIViewController class]]) {
                    return YES;
                } else if ([responder isKindOfClass:[UINavigationController class]]) {
                    return YES;
                } else if ([responder isKindOfClass:[UITabBarController class]]) {
                    return YES;
                } else if ([responder isKindOfClass:NSClassFromString(@"UIInputWindowController")]) {
                    return YES;
                }
                return NO;
            };
            
        UIResponder *nextResponder = tempView.nextResponder;
            
        while (canNext(nextResponder)) {
                tempView = tempView.subviews.firstObject;
                if (!tempView) {
                    return nil;
                }
                nextResponder = tempView.nextResponder;
        }
            
        UIViewController *currentVC = (UIViewController *)nextResponder;
        if (currentVC) {
                return currentVC;
        }
    }
    return nil;
}
@end
