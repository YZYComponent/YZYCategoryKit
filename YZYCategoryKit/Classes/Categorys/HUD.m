//
//  HUD.m
//  EnglishWeekly
//
//  Created by xyhuang2 on 17/3/6.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "HUD.h"

@implementation HUD

+ (void)initialize
{
    NSLog(@"SVProgressHUD setDefaultStyle");
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleLight];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    [SVProgressHUD setMinimumDismissTimeInterval:2.0];
}

+ (void)showError:(NSString *)msg {
    [SVProgressHUD showErrorWithStatus:msg];
}

+ (void)showInfo:(NSString *)msg {
    [SVProgressHUD showInfoWithStatus:msg];
}

+ (void)show:(NSString *)msg {
    [SVProgressHUD showWithStatus:msg];
}

+ (void)showSuccess:(NSString *)msg {
    [SVProgressHUD showSuccessWithStatus:msg];
}

+ (void)showInfo:(NSString *)msg withStyle:(SVProgressHUDMaskType)style {
    SVProgressHUDMaskType existStyle = [[SVProgressHUD alloc]init].defaultMaskType;
    [SVProgressHUD setDefaultMaskType:style];
    [self showInfo:msg];
    [SVProgressHUD setDefaultMaskType:existStyle];
}

+ (void)dismiss {
    [SVProgressHUD dismiss];
}

+ (void)dismissWithDelay:(NSTimeInterval)time {
    [SVProgressHUD dismissWithDelay:time];
}

@end
