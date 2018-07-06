//
//  NSString+SHA1.h
//  EWTeacher_iOS
//
//  Created by xyhuang2 on 16/3/28.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

#define DESKEY      @"faPv8413"

static NSString * const AESKEY = @"0b05395ed01242b9";

///NSString加密解密相关操作
@interface NSString (Security)

//SHA1加密方法
- (NSString *)sha1;

///base64编码方法
- (NSString *)base64;
///base64解码方法
- (NSString *)deBase64;

///des加密方法
- (NSString *)des;

///MD5加密方法
- (NSString *)md5String;

///AES256加密
- (NSString *)aes256_encrypt:(NSString *)key;
///AES256解密
- (NSString *)aes256_decrypt:(NSString *)key;

@end
