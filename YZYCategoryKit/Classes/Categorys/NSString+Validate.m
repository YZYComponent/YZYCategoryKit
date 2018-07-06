//
//  NSString+Validate.m
//  EnglishWeekly
//
//  Created by xyhuang2 on 17/2/16.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "NSString+Validate.h"

@implementation NSString (Validate)

#pragma mark 校验邮箱
- (BOOL)isValidEmail {
    NSString *emailRegex = @".+@.+.[A-Za-z-]{2}[A-Za-z]*";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",emailRegex];
    return [emailTest evaluateWithObject:self];
}

#pragma mark 校验手机号
- (BOOL)isValidPhoneNumber {
	NSString *phoneNumberRegex = @"^((\\+)|1)[0-9]{10}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneNumberRegex];
    return [phoneTest evaluateWithObject:self];
}

#pragma mark 校验手机和座机
- (BOOL)isValidMobileOrFixedPhoneNumber {
    NSString *phoneNumberRegex = @"((^((\\+)|1)[0-9]{10}$)|(^([0-9]{4}|[0-9]{3})?-?[0-9]{7,8}$))";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneNumberRegex];
    return [phoneTest evaluateWithObject:self];
}

#pragma mark 校验密码
- (BOOL)isValidLoginPassword {
    NSString *loginPasswordRegex = @"^[A-Za-z0-9]{6,16}$";
    NSPredicate *loginPasswordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",loginPasswordRegex];
    return [loginPasswordTest evaluateWithObject:self];
}

#pragma mark 校验学习卡
- (BOOL)isValidLearnCardNum {
    NSString *loginPasswordRegex = @"^[A-Za-z0-9]+$";
    NSPredicate *loginPasswordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",loginPasswordRegex];
    return [loginPasswordTest evaluateWithObject:self];
}

#pragma mark 校验验证码
- (BOOL)isValidVerificationCode {
    NSString *verificationCodeRegex = @"^[0-9]{6}$";
    NSPredicate *verificationCodeTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",verificationCodeRegex];
    return [verificationCodeTest evaluateWithObject:self];
}

#pragma mark 校验昵称
- (BOOL)isValidNickName {
    NSString *nickNameRegex = @"^[0-9a-zA-Z_\u4e00-\u9fa5]+$";
    NSPredicate *nickNameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nickNameRegex];
    return [nickNameTest evaluateWithObject:self];
}

#pragma mark 校验地址字符
- (BOOL)isValidAddressString {
    NSString *nickNameRegex = @"^[0-9a-zA-Z\\(\\)，,.。 （）#\u4e00-\u9fa5]+$";
    NSPredicate *nickNameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nickNameRegex];
    return [nickNameTest evaluateWithObject:self];
}

#pragma mark 校验纯数字字符串
- (BOOL)isValidNumberString {
    BOOL result = YES;
    NSCharacterSet* tmpSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    int i = 0;
    while (i < self.length) {
        NSString * string = [self substringWithRange:NSMakeRange(i, 1)];
        NSRange range = [string rangeOfCharacterFromSet:tmpSet];
        if (range.length == 0) {
            result = NO;
            break;
        }
        i++;
    }
    return result;
}

- (BOOL)isValidStudentNum {
    NSString *regex = @"^\\d{3}$";
    NSPredicate *testStr = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [testStr evaluateWithObject:self];
}

- (BOOL)isValidAnswerString {
    NSString *nickNameRegex = @"^[0-9a-zA-Z\\(\\)%&.,:;?!'-—…%′？！°，。：、〃℃《》 （）➋➌➍➎➏➐➑➒#\u4e00-\u9fa5]+$";
    NSPredicate *nickNameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nickNameRegex];
    return [nickNameTest evaluateWithObject:self];
}

#pragma mark 校验空字符串
+ (BOOL)isNullOrEmpty:(NSString*)string{
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    string = [NSString stringWithFormat:@"%@",string];
    return string == nil || string==(id)[NSNull null] || [string isEqualToString: @""] ||[string isEqualToString: @" "] || string.length == 0 || [string isEqualToString:@"(null)" ] || [string isEqualToString:@"null"] |[string isEqualToString:@"<null>"];
}



@end
