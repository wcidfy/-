//
//  ProductButton.m
//  九宫格
//
//  Created by lxx on 16/2/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ProductButton.h"
#define kImagePercent 0.7
@implementation ProductButton
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
        //图片等比例缩放
        [self.imageView setContentMode:UIViewContentModeScaleAspectFit];
    }
    return self;

}

#pragma mark 设置按钮文本位置

-(CGRect )titleRectForContentRect:(CGRect)contentRect
{
    CGFloat imageH=contentRect.size.height*kImagePercent;
    CGFloat titleH=contentRect.size.height-imageH;
    return CGRectMake(0, imageH, contentRect.size.width, titleH);

}

#pragma mark 设置按钮图片位置

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageH=contentRect.size.height*kImagePercent;
    return CGRectMake(0, 0, contentRect.size.width, imageH);

}
@end
