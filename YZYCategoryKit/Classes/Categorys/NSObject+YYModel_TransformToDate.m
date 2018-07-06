//
//  BaseObject+YYModel_TransformToDate.m
//  EnglishWeekly
//
//  Created by xyhuang2 on 2017/6/1.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "NSObject+YYModel_TransformToDate.h"

@implementation NSObject (YYModel_TransformToDate)

- (BOOL)yymodelCustomTransformToDateFromDictionary:(NSDictionary *)dic withFieldDict:(NSArray <NSString *>*)fields {
    __block BOOL result = YES;
    [fields enumerateObjectsUsingBlock:^(NSString * _Nonnull key, NSUInteger idx, BOOL * _Nonnull stop) {
        id value = dic[key];
        if (value && value != [NSNull null]) {
            if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
                NSDate *date = [NSDate dateWithTimeIntervalSince1970:[value doubleValue]/1000];
                [self setValue:date forKey:key];
            }
            else {
                result = NO;
                *stop = YES;
            }
        }
    }];
    return result;
}

@end
