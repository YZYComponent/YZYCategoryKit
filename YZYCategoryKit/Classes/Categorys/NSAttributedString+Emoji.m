//
//  NSAttributedString+Emoji.m
//  EnglishWeekly
//
//  Created by VicKey on 15/11/5.
//  Copyright © 2015年 iflytek. All rights reserved.
//
#define ICON_SIZE   20.0f
#define BEGIN_TAG   @"[p/"
#define END_TAG     @"]"
#define FontCount   16

#import "NSAttributedString+Emoji.h"

@implementation NSAttributedString (Emoji)

//初始字符串表情处理后的富文本字符串
+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string?:@""];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:5.0f];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    [attributedString addAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:FontCount]} range:NSMakeRange(0, attributedString.length)];
    
    NSArray *attachmentArray = [NSAttributedString attachmentsForAttributedString:string];
    
    [attachmentArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        VKTextAttachment *attachment = obj;
        NSAttributedString *emotionAttachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
        [attributedString replaceCharactersInRange:attachment.range withAttributedString:emotionAttachmentString];
    }];
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle} range:NSMakeRange(0, attributedString.length)];
    return attributedString;
}

+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string font:(UIFont *)font
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string?:@""];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:3.0f];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle,NSFontAttributeName:font} range:NSMakeRange(0, attributedString.length)];
    
    NSArray *attachmentArray = [NSAttributedString attachmentsForAttributedString:string];
    
    [attachmentArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        VKTextAttachment *attachment = obj;
        NSAttributedString *emotionAttachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
        [attributedString replaceCharactersInRange:attachment.range withAttributedString:emotionAttachmentString];
    }];
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle} range:NSMakeRange(0, attributedString.length)];
    return attributedString;
}

+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string colorValue:(id)value
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string?:@""];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:3.0f];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle,NSFontAttributeName:[UIFont systemFontOfSize:16]} range:NSMakeRange(0, attributedString.length)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:value range:NSMakeRange(0,string.length)]; //设置字体颜色
    
    NSArray *attachmentArray = [NSAttributedString attachmentsForAttributedString:string];
    
    [attachmentArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        VKTextAttachment *attachment = obj;
        NSAttributedString *emotionAttachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
        [attributedString replaceCharactersInRange:attachment.range withAttributedString:emotionAttachmentString];
    }];
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle} range:NSMakeRange(0, attributedString.length)];
    return attributedString;
}

+ (NSMutableAttributedString *)attributedStringWithString:(NSString *)string colorValue:(id)value font:(UIFont *)font
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc]initWithString:string?:@""];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    [paragraphStyle setLineSpacing:3.0f];
    paragraphStyle.lineBreakMode = NSLineBreakByCharWrapping;
    
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle,NSFontAttributeName:font} range:NSMakeRange(0, attributedString.length)];
    [attributedString addAttribute:NSForegroundColorAttributeName value:value range:NSMakeRange(0,string.length)]; //设置字体颜色
    
    NSArray *attachmentArray = [NSAttributedString attachmentsForAttributedString:string];
    
    [attachmentArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        VKTextAttachment *attachment = obj;
        NSAttributedString *emotionAttachmentString = [NSAttributedString attributedStringWithAttachment:attachment];
        [attributedString replaceCharactersInRange:attachment.range withAttributedString:emotionAttachmentString];
    }];
    [attributedString addAttributes:@{NSParagraphStyleAttributeName : paragraphStyle} range:NSMakeRange(0, attributedString.length)];
    return attributedString;
}

/*
 * 查找所有表情文本并替换
 */
+ (NSArray *)attachmentsForAttributedString:(NSString *)string
{
    NSMutableArray *imageArray = [NSMutableArray array];
    NSInteger index = 0;
    for (NSInteger i = 0; i < string.length; ) {
        NSString *str = [string substringFromIndex:i];
        NSRange range = [str rangeOfString:BEGIN_TAG];
        NSRange range1 = [str rangeOfString:END_TAG];
//        if (range1.location == NSNotFound) {
////            return nil;
//            NSLog(@"发的的帖子怎么不合法？？？");
//        }
        NSInteger FACE_NAME_LEN = range1.location + range1.length - range.location;
        if (range.length > 0 && range1.location != NSNotFound) {
            
            NSString *imageStr = [str substringWithRange:NSMakeRange(range.location, FACE_NAME_LEN)];
            NSString *imgStr = [imageStr substringWithRange:NSMakeRange(3, imageStr.length - 4)];
            UIImage *imageTemp = [UIImage imageNamed:imgStr];
            if (!imageTemp) {
                i = i + range.location + FACE_NAME_LEN;
                index = index + range.location + FACE_NAME_LEN;
                continue;
            }
            
            VKTextAttachment *attachment = [[VKTextAttachment alloc]init];
            attachment.range = NSMakeRange(range.location+index, FACE_NAME_LEN);
            attachment.image = imageTemp;
            attachment.bounds = CGRectMake(0, -4, imageTemp.size.width*ICON_SIZE/imageTemp.size.height, ICON_SIZE);
            [imageArray addObject:attachment];
        }
        
        i = i + range.location + FACE_NAME_LEN;
        index = index + range.location+1;
    }
    
    return imageArray;
}

#pragma mark - 修改图片名称格式
+(NSString *)formatImageName:(NSString *)imageName{
    return [NSString stringWithFormat:@"%@%@%@",BEGIN_TAG,imageName,END_TAG];
}

- (CGFloat)heightForAttributedStrWithWidth:(CGFloat)strWidth {
    if (!self) {
        return 0.f;
    }
    UITextView *textView = [[UITextView alloc]init];
    textView.attributedText = self;
    CGFloat height = [textView sizeThatFits:CGSizeMake(strWidth, MAXFLOAT)].height;
    return height;
}

@end


@implementation VKTextAttachment

@end
