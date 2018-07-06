//
//  UIView+SuperController.h
//  EnglishWeekly
//
//  Created by Yan on 2018/6/19.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SuperController)
/**
 获取父控制器
 
 @return 父控制器
 */
- (UIViewController *)getViewController;
@end
