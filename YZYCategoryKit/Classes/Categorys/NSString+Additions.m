//
//  NSString+Additions.m
//  EnglishWeekly
//
//  Created by xyhuang2 on 2017/6/12.
//  Copyright © 2017年 iflytek. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)

- (NSUInteger)wordCount {
    NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSArray *words = [self componentsSeparatedByCharactersInSet:separators];
    
    NSIndexSet *separatorIndexes = [words indexesOfObjectsPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        return [obj isEqualToString:@""];
    }];
    
    return [words count] - [separatorIndexes count];
}

- (NSUInteger)wordCount2 {
    __block NSUInteger count = 0;
    [self enumerateSubstringsInRange:NSMakeRange(0, [self length])
                            options:NSStringEnumerationByWords|NSStringEnumerationSubstringNotRequired
                         usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                             count++;
                         }];
    return count;
}

@end
