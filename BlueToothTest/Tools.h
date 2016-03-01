//
//  Tools.h
//  YiXiaoBaoMall
//
//  Created by zhangjin on 15/12/1.
//  Copyright © 2015年 徐凯. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Tools : NSObject

+ (Tools *) sharedInstance;
//get数据请求
+(void)getDic:(NSString *)url
       params:(NSDictionary *)params
      success:(void(^)(NSDictionary *responseDict))success
      failure:(void(^)(NSError *error))failure;
@end
