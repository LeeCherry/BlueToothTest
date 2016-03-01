//
//  AdvListModel.m
//  BlueToothTest
//
//  Created by Anarry on 16/1/23.
//  Copyright © 2016年 Anarry. All rights reserved.
//

#import "AdvListModel.h"
#import "itemsModel.h"

@implementation AdvListModel

+(NSDictionary *)mj_objectClassInArray{
    return @{@"item":[itemsModel class]};
}
@end
