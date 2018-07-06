//
//  NSString+Dictionary.h
//  EnglishWeekly
//
//  Created by Yan on 2018/5/21.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Dictionary)

/**
 jsonString转Dic

 @param jsonString 传入jsonString
 @return 输出dic
 */
+ (NSMutableDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
@end
