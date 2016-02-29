//
//  Product.h
//  九宫格
//
//  Created by lxx on 16/2/20.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Product : NSObject
+(id)productWithName:(NSString *)name;
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)UIImage *image;

@end
