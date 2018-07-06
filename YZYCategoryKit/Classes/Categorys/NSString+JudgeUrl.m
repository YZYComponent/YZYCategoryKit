//
//  NSString+JudgeUrl.m
//  EnglishWeekly
//
//  Created by Yan on 2018/6/15.
//  Copyright © 2018年 iflytek. All rights reserved.
//

#import "NSString+JudgeUrl.h"

@implementation NSString (JudgeUrl)
- (BOOL)isUrl
{
    
    if(self == nil)
        
        return NO;
    
    NSString *url;
    
    if (self.length>4 && [[self substringToIndex:4] isEqualToString:@"www."]) {
        
        url = [NSString stringWithFormat:@"http://%@",self];
        
    }else{
        
        url = self;
        
    }
    
    NSString *urlRegex = @"(https|http|ftp|rtsp|igmp|file|rtspt|rtspu)://((((25[0-5]|2[0-4]\\d|1?\\d?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1?\\d?\\d))|([0-9a-z_!~*'()-]*\\.?))([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\\.([a-z]{2,6})(:[0-9]{1,4})?([a-zA-Z/?_=]*)\\.\\w{1,5}";
    
    NSPredicate *urlPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", urlRegex];
    
    return [urlPredicate evaluateWithObject:url];
    
}
@end
