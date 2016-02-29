//
//  ProductCell.h
//  九宫格
//
//  Created by lxx on 16/2/21.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KproductRowCount 4
@class  ProductCell;
@protocol ProductCellDelegate<NSObject>
-(void)productCell:(ProductCell *)productCell didSelectedIndex:(NSInteger)index;
@end
@interface ProductCell : UITableViewCell
@property(weak,nonatomic)id <ProductCellDelegate>delegate;
@property(nonatomic,assign)NSInteger cellRow;
// 传入单元格需要使用的数组，设置表格行中的按钮信息
- (void)resetButttonWithArray:(NSArray *)array;
@end
