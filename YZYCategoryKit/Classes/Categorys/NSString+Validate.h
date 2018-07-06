//
//  NSString+Validate.h
//  EnglishWeekly
//
//  Created by xyhuang2 on 17/2/16.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validate)

///校验邮箱
- (BOOL)isValidEmail;

///校验手机号
- (BOOL)isValidPhoneNumber;

///校验手机和座机
- (BOOL)isValidMobileOrFixedPhoneNumber;

///校验密码
- (BOOL)isValidLoginPassword;

///校验验证码
- (BOOL)isValidVerificationCode;
///校验学习卡
- (BOOL)isValidLearnCardNum;
///校验昵称
- (BOOL)isValidNickName;

///校验纯数字字符串
- (BOOL)isValidNumberString;

- (BOOL)isValidStudentNum;

///校验空字符串
+ (BOOL)isNullOrEmpty:(NSString*)string;

//／校验地址字符
- (BOOL)isValidAddressString;

- (BOOL)isValidAnswerString;

@end
