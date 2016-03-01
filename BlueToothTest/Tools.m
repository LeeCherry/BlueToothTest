//
//  Tools.m
//  YiXiaoBaoMall
//
//  Created by zhangjin on 15/12/1.
//  Copyright © 2015年 徐凯. All rights reserved.
//

#import "Tools.h"
#import <AFNetworking.h>


@implementation Tools


+ (Tools *) sharedInstance
{
    static dispatch_once_t once;
    static Tools *main = nil;
    dispatch_once(&once, ^ {
        main = [[Tools alloc] init];
    });
    
    return main;
}
//网络请求
+(void)getDic:(NSString *)url params:(NSDictionary *)params success:(void(^)(NSDictionary *responseDict))success failure:(void(^)(NSError *error))failure{
    
    NSString *serverUrl = url;
    
    //遍历 转换正确的GET请求方式
    NSInteger urlCount=1;
    NSString *getUrl=[serverUrl stringByAppendingString:@""];
    for (NSString *key in [params allKeys]) {
        NSString *value=[params objectForKey:key];
        if (urlCount==[[params allKeys] count]) {
            getUrl=[getUrl stringByAppendingString:[NSString stringWithFormat:@"%@=%@",key,value]];
        }else{
            getUrl=[getUrl stringByAppendingString:[NSString stringWithFormat:@"%@=%@&",key,value]];
        }
        urlCount++;
    }
    NSLog(@"请求链接%@",getUrl);
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:getUrl] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:15];
    
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSString *html = operation.responseString;
        NSData* data=[html dataUsingEncoding:NSUTF8StringEncoding];
        id dict=[NSJSONSerialization  JSONObjectWithData:data options:0 error:nil];
        if (success) {
            success(dict);
        }
    }failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    [operation start];
}


@end
