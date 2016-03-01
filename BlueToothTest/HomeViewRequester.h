//
//  HomeViewRequester.h
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeModel.h"

@interface HomeViewRequester : NSObject
/*
 获取首页信息
 */
+(void)getAdvertWithSpecial_id:(NSString *) special_id
                       success:(void(^)(HomeModel *model)) success
                       failure:(void(^)(NSError *error)) failure;

@end
