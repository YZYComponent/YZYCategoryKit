//
//  NSDictionary+NSString.h
//  EnglishWeekly
//
//  Created by Yan on 2018/6/25.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (NSString)

/**
 字段转json

 @param dict 传入字典参数
 @return 输出json
 */
- (NSString *)convertToJsonData:(NSDictionary *)dict;
@end
