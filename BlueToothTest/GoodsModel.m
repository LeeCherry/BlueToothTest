//
//  GoodsModel.m
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import "GoodsModel.h"
#import "GoodsItemsModel.h"
@implementation GoodsModel
+(NSDictionary *)mj_objectClassInArray{
    return @{@"item":[GoodsItemsModel class]};
}
@end
