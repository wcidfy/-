//
//  ProductCell.m
//  九宫格
//
//  Created by lxx on 16/2/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ProductCell.h"
#import "ProductButton.h"
#import "Product.h"
#define  KTagDef 100
@implementation ProductCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        CGFloat kRowWidth=320/KproductRowCount;
        for (NSInteger i=0; i<KproductRowCount; i++) {
            ProductButton *but=[ProductButton buttonWithType:UIButtonTypeCustom];
            but.frame=CGRectMake(i*kRowWidth, 0, kRowWidth, 100);
            [but setTag:KTagDef +i];
            [but addTarget:self action:@selector(ButClick:) forControlEvents:UIControlEventTouchUpInside];
            but.layer.borderColor=[UIColor redColor].CGColor;
            [self.contentView addSubview:but];
        }
    }

    return self;

}
#pragma mark 按钮点击监听方法
-(void)ButClick:(ProductButton *)button
{                     
    NSInteger index=self.cellRow*KproductRowCount+button.tag-KTagDef;
    NSLog(@"_________________________%d",index);
    [self.delegate productCell:self didSelectedIndex:index];

}
- (void)resetButttonWithArray:(NSArray *)array
{

//    for (NSInteger i=0; i<KproductRowCount; i++)
//    {
//        ProductButton *but=(ProductButton *)[self viewWithTag:KTagDef+i];
//        if (i<array.count)
//        {
//            Product *p=array[i];
//            [but setTitle:p.name forState:UIControlStateNormal];
//            [but setImage:p.image forState:UIControlStateNormal];
//            [but setHidden:NO];
//        }else
//        {
//            [but setHidden:YES];
//        }
//    }
    for (NSInteger i = 0; i < KproductRowCount; i++) {
        ProductButton *button = (ProductButton *)[self viewWithTag:KTagDef + i];
        
        if (i < array.count) {
            Product *p = array[i];
            
            [button setImage:p.image forState:UIControlStateNormal];
            [button setTitle:p.name forState:UIControlStateNormal];
            
            [button setHidden:NO];
        } else {
            [button setHidden:YES];
        }
    }



}

@end
