//
//  UIViewController+AlertView.m
//  EnglishWeekly
//
//  Created by iflytek on 17/2/17.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "UIViewController+AlertView.h"
#import "SCLAlertView.h"
#import "UIColor+Hexadecimal.h"

@implementation UIViewController (AlertView)

- (void)showErrorAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle andCancelButtonTitle:(NSString *)cancelTile {
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    alert.showAnimationType = SCLAlertViewHideAnimationSlideOutToCenter;
    alert.hideAnimationType = SCLAlertViewHideAnimationSlideOutFromCenter;
    
    [alert showError:self title:title
            subTitle:subTitle
    closeButtonTitle:cancelTile duration:0.0f];
}

- (void)showWarningAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle cancelButtonTitle:(NSString *)cancelTile otherButtonTitle:(NSString *)otherBtnTitle selector:(SEL)selector {
    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
    [alert setHorizontalButtons:YES];
    alert.showAnimationType = SCLAlertViewHideAnimationSlideOutToCenter;
    alert.hideAnimationType = SCLAlertViewHideAnimationSlideOutFromCenter;
    
    SCLButton *button = [alert addButton:otherBtnTitle target:self selector:selector];
    
    button.buttonFormatBlock = ^NSDictionary* (void)
    {
        NSMutableDictionary *buttonConfig = [[NSMutableDictionary alloc] init];
        
        buttonConfig[@"backgroundColor"] = [UIColor whiteColor];
        buttonConfig[@"textColor"] = [UIColor blackColor];
        buttonConfig[@"borderWidth"] = @2.0f;
        buttonConfig[@"borderColor"] = [UIColor colorWithRGBHex:0xFFD110];
        
        return buttonConfig;
    };
    
    [alert showWarning:title subTitle:subTitle closeButtonTitle:cancelTile duration:0.0f];
}

- (void)showWarningAlertViewWithTitle:(NSString *)title subTitle:(NSString *)subTitle cancelButtonTitle:(NSString *)cancelTile otherButtonTitle:(NSString *)otherBtnTitle buttonAction:(SCLActionBlock)btnAction {
    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
    [alert setHorizontalButtons:YES];
    alert.showAnimationType = SCLAlertViewHideAnimationSlideOutToCenter;
    alert.hideAnimationType = SCLAlertViewHideAnimationSlideOutFromCenter;
    
    SCLButton *button = [alert addButton:otherBtnTitle actionBlock:btnAction];
    
    button.buttonFormatBlock = ^NSDictionary* (void)
    {
        NSMutableDictionary *buttonConfig = [[NSMutableDictionary alloc] init];
        
        buttonConfig[@"backgroundColor"] = [UIColor whiteColor];
        buttonConfig[@"textColor"] = [UIColor blackColor];
        buttonConfig[@"borderWidth"] = @2.0f;
        buttonConfig[@"borderColor"] = [UIColor colorWithRGBHex:0xFFD110];
        
        return buttonConfig;
    };
    
    [alert showWarning:title subTitle:subTitle closeButtonTitle:cancelTile duration:0.0f];
}


@end
