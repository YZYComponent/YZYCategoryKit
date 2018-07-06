//
//  BaseObject+YYModel_TransformToDate.h
//  EnglishWeekly
//
//  Created by xyhuang2 on 2017/6/1.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (YYModel_TransformToDate)

- (BOOL)yymodelCustomTransformToDateFromDictionary:(NSDictionary *)dic withFieldDict:(NSArray <NSString *>*)fields;

@end
