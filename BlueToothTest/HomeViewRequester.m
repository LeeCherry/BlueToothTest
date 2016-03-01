//
//  HomeViewRequester.m
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import "HomeViewRequester.h"

@implementation HomeViewRequester
/*
 获取首页信息
 */
+(void)getAdvertWithSpecial_id:(NSString *)special_id
                       success:(void (^)(HomeModel *))success
                       failure:(void (^)(NSError *))failure
{
    [Tools getDic:special_id params:nil success:^(NSDictionary *responseDict) {
        
        NSArray*datas = responseDict[@"datas"];
        NSDictionary *dic1 = datas[0];
        NSDictionary *dic2 = datas[1];
        NSDictionary *dic3 = datas[2];
        NSDictionary *dic4 = datas[3];
        HomeModel *model = [[HomeModel alloc]init];
        AdvListModel *adModel = [AdvListModel mj_objectWithKeyValues:dic1[@"adv_list"]];
        
        Home2Model *home2Model = [Home2Model mj_objectWithKeyValues:dic2[@"home2"]];
        Home3Model *home3Model = [Home3Model mj_objectWithKeyValues:dic3[@"home3"]];
        GoodsModel *goodsModel = [GoodsModel mj_objectWithKeyValues:dic4[@"goods"]];
        model.adv_list = adModel;
        model.home2 = home2Model;
        model.home3 = home3Model;
        model.goods = goodsModel;
        success(model);
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];

}

@end
