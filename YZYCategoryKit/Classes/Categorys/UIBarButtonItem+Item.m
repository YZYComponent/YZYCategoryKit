//
//  UIBarButtonItem+Item.m
//  EWTeacher_iOS
//
//  Created by iflytek on 16/4/1.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import "UIBarButtonItem+Item.h"
#import "UIViewExt.h"

@implementation UIBarButtonItem (Item)

+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image highlightImage:(UIImage *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents) controlEvents {
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:highImage forState:UIControlStateHighlighted];
    btn.size = CGSizeMake(20, 20);
    //[btn sizeToFit];
    
    [btn addTarget:target action:action forControlEvents:controlEvents];
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}


@end
