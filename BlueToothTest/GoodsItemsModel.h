//
//  GoodsItemsModel.h
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import <Foundation/Foundation.h>

//用做数据内部goods图文字典解析用

@interface GoodsItemsModel : NSObject

@property (nonatomic,strong)NSNumber *goods_id;
@property (nonatomic,copy)NSString *goods_image;
@property (nonatomic,copy)NSString *goods_name;
@property (nonatomic,copy)NSString *goods_promotion_price;

@end
