//
//  UITabBar+BadgeExt.h
//  EnglishWeekly
//
//  Created by iflytek on 16/11/14.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (BadgeExt)

- (void)showBadgeOnItemIndex:(NSInteger)index;   ///<显示小红点

- (void)hideBadgeOnItemIndex:(NSInteger)index;  ///<隐藏小红点

@end
