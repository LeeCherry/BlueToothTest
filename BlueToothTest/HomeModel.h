//
//  HomeModel.h
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Home2Model.h"
#import "AdvListModel.h"
#import "Home3Model.h"
#import "GoodsModel.h"

@interface HomeModel : NSObject

@property (nonatomic,strong)Home2Model *home2;
@property (nonatomic,strong)AdvListModel *adv_list;
@property (nonatomic,strong)Home3Model *home3;
@property (nonatomic,strong)GoodsModel *goods;

@end
