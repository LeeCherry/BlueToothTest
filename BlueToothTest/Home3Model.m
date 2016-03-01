//
//  Home3Model.m
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import "Home3Model.h"
#import "itemsModel.h"
@implementation Home3Model

+(NSDictionary *)mj_objectClassInArray{
    return @{@"item":[itemsModel class]};
}
@end
