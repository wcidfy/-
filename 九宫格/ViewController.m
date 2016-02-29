//
//  ViewController.m
//  九宫格
//
//  Created by lxx on 16/2/19.
//  Copyright © 2016年 lxx. All rights reserved.
//

#import "ViewController.h"
#import "Product.h"
#import "ProductButton.h"
#define kProductcount 40
@interface ViewController ()
@property(nonatomic,strong)NSArray *arrayList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化数据
    NSMutableArray *arr=[NSMutableArray arrayWithCapacity:kProductcount];
    for(NSInteger i=1;i<=kProductcount;i++)
    {
        NSString *name=[NSString stringWithFormat:@"商品___%d",i];
        Product *p=[Product productWithName:name];
        [arr addObject:p];
        
    }
    self.arrayList=arr;
    [self.tableView setRowHeight:100];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];

}

#pragma mark tableview数据源方法
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger rows=kProductcount/KproductRowCount+1;
    return rows;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId=@"cellId";
    ProductCell *cell=[tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell==nil) {
        cell=[[ProductCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.delegate=self;
          }
    NSUInteger loc=indexPath.row*KproductRowCount;
    NSUInteger len=KproductRowCount;
    if (loc + len > self.arrayList.count) {
        len = self.arrayList.count - loc;
    }

    NSRange range=NSMakeRange(loc, len);
    NSArray *array=[self.arrayList subarrayWithRange:range];
    [cell resetButttonWithArray:array];
    [cell setCellRow:indexPath.row];
    return cell;
}
-(void)productCell:(ProductCell *)productCell didSelectedIndex:(NSInteger)index
{

    NSLog(@"________%d",index);


}
@end
