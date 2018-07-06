//
//  NSString+Dictionary.m
//  EnglishWeekly
//
//  Created by Yan on 2018/5/21.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import "NSString+Dictionary.h"

@implementation NSString (Dictionary)
+ (NSMutableDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err)
    {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}


@end
