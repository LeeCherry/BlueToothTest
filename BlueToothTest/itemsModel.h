//
//  itemsModel.h
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import <Foundation/Foundation.h>

//用做数据内部图文字典解析用

@interface itemsModel : NSObject
@property (nonatomic,copy)NSString *data;
@property (nonatomic,copy)NSString *image;
@property (nonatomic,copy)NSString *type;

@end
