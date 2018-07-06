//
//  UIImage+Scale.h
//  DrawImageTest
//
//  Created by iflytek.com on 12-9-21.
//  Copyright (c) 2012年 iflytek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)

- (UIImage *)stretchImageWithSets:(UIEdgeInsets)cornerCaps toSize:(CGSize) size;
- (UIImage *)stretchImageHor:(UIEdgeInsets)cornerCaps toSize:(CGSize) size;
- (UIImage*)scaleToSize:(CGSize)size;
- (UIImage*)scaleByWidth:(CGFloat)width;

@end
