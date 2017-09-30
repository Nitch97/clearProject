//
//  BaseModel.m
//  JFB
//
//  Created by xiong on 2017/4/11.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

//如果代码中的key值不存在,会抛出异常,可以通过重写下面的方法进行解决
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {}
- (void)setNilValueForKey:(NSString *)key {}

@end
