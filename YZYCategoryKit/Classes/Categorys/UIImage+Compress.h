//
//  UIImage+Compress.h
//  EnglishWeekly
//
//  Created by Guoping Li on 2018/5/4.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIImage (Compress)
/**
 图片压缩+图片方向调整
 */
+ (NSData *)compressWithImage:(UIImage *)image;
/**
 图片压缩+图片方向调整+图片名称
 */
+ (NSData *)compressWithImage:(UIImage *)image withCustomImage:(NSString *)imageName;

@end
