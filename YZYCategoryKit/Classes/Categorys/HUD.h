//
//  HUD.h
//  EnglishWeekly
//
//  Created by xyhuang2 on 17/3/6.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SVProgressHUD/SVProgressHUD.h>

///SVProgressHUD的封装，方便在任意地方调用HUD，展示遮罩
@interface HUD : NSObject

+ (void)show:(NSString *)msg;
+ (void)showError:(NSString *)msg;
+ (void)showInfo:(NSString *)msg;
+ (void)showSuccess:(NSString *)msg;
+ (void)dismiss;
+ (void)showInfo:(NSString *)msg withStyle:(SVProgressHUDMaskType)style;
+ (void)dismissWithDelay:(NSTimeInterval)time;


@end
