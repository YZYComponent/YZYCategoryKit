//
//  NSAttributedString+Emoji.h
//  EnglishWeekly
//
//  Created by VicKey on 15/11/5.
//  Copyright © 2015年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (Emoji)
//初始字符串表情处理后的富文本字符串
+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string;
//初始字符串表情处理后的富文本字符串,带字体大小
+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string font:(UIFont *)font;
//带字体颜色
+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string colorValue:(id)value;

+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string colorValue:(id)value font:(UIFont *)font;
//将图片封装成特定格式的字符串
+(NSString *)formatImageName:(NSString *)imageName;

- (CGFloat)heightForAttributedStrWithWidth:(CGFloat)strWidth;

@end

@interface VKTextAttachment : NSTextAttachment

@property (nonatomic, assign) NSRange range;

@end