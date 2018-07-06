//
//  UIButton+UIButtonImageWithLable.m
//  EnglishWeekly
//
//  Created by admin on 14/11/18.
//  Copyright (c) 2014年 iflytek. All rights reserved.
//

#import "UIButton+UIButtonImageWithLable.h"

@implementation UIButton (UIButtonImageWithLable)

- (void) setImage:(UIImage *)image withTitle:(NSString *)title forState:(UIControlState)stateType {
    
    [self setImage:image forState:stateType];

    [self setTitle:title forState:stateType];
}

- (void)centerImageAndTitle:(float)spacing
{
    // get the size of the elements here for readability
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    // get the height they will take up as a unit
    CGFloat totalHeight = (imageSize.height + titleSize.height + spacing);
    
    // raise the image and push it right to center it
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    
    // lower the text and push it left to center it
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, - imageSize.width, - (totalHeight - titleSize.height),0.0);
}

- (void)centerImageAndTitle
{
    const int DEFAULT_SPACING = 6.0f;
    [self centerImageAndTitle:DEFAULT_SPACING];
}

- (void)horizonImageAndTitleWithSpacing:(CGFloat)spacing {
//    // get the size of the elements here for readability
//    CGSize imageSize = self.imageView.frame.size;
//    CGSize titleSize = self.titleLabel.frame.size;
  
//    // get the height they will take up as a unit
//    CGFloat totalWidth = (imageSize.width + titleSize.width + spacing);
  
    // raise the image and push it right to center it
    self.imageEdgeInsets = UIEdgeInsetsMake(0.0, -(spacing/2), 0.0, 0.0);
    
    // lower the text and push it left to center it
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0, spacing/2, 0.0, 0.0);
}

- (void)horizonImageAndTitle {
    const int DEFAULT_SPACING = 6.0f;
    [self horizonImageAndTitleWithSpacing:DEFAULT_SPACING];
}

@end
