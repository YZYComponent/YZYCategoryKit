//
//  UIViewController+AlertView.h
//  EnglishWeekly
//
//  Created by iflytek on 17/2/17.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCLAlertView.h"

@interface UIViewController (AlertView)

- (void)showErrorAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle andCancelButtonTitle:(NSString *)cancelTile;

- (void)showWarningAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle cancelButtonTitle:(NSString *)cancelTile otherButtonTitle:(NSString *)otherBtnTitle selector:(SEL)selector;

- (void)showWarningAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle cancelButtonTitle:(NSString *)cancelTile otherButtonTitle:(NSString *)otherBtnTitle buttonAction:(SCLActionBlock)btnAction;

@end
