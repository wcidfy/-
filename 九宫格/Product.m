//
//  Product.m
//  九宫格
//
//  Created by lxx on 16/2/20.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "Product.h"

@implementation Product
+(id)productWithName:(NSString *)name
{
    Product *p=[[Product alloc]init];
    [p setName:name];
    NSString *imageStr=[NSString stringWithFormat:@"tmall_icon_cat_outing_%d",arc4random_uniform(12)+1];
    [p setImage:[UIImage imageNamed:imageStr]];

    return p;
}

@end
