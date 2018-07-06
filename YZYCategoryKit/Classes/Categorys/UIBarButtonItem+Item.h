//
//  UIBarButtonItem+Item.h
//  EWTeacher_iOS
//
//  Created by iflytek on 16/4/1.
//  Copyright © 2016年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIBarButtonItem (Item)

+ (UIBarButtonItem *) barButtonItemWithImage: (UIImage *)image highlightImage: (UIImage *)highImage target: (id)target action: (SEL)action forControlEvents: (UIControlEvents) controlEvents;

@end
