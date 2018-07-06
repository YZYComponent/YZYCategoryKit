//
//  NSString+JudgeUrl.h
//  EnglishWeekly
//
//  Created by Yan on 2018/6/15.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JudgeUrl)

/**
 判断是否是Url

 @return Yes既是url,NO反之
 */
- (BOOL)isUrl;
@end
