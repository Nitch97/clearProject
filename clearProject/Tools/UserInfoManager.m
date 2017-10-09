//
//  UserInfoManager.m
//  JFB
//
//  Created by xiong on 2017/4/11.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "UserInfoManager.h"

#define KEY @"USERINFO"

static UserInfoModel *sharManager = nil;

@implementation UserInfoManager

//保存用户信息
+ (void)saveUserInfoWithModel:(UserInfoModel *)entity {
    //NSUserDefaults继承于NSObject, 单例设计模式, 存储信息采用的键值对的形式
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    //将实体归档成data数据
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:entity];
    //存数据
    [userD setObject:data forKey:KEY];
    
    //NSUserDefaults, 不是立即写入,写完之后需要同步一下
    [userD synchronize];
}

//清空用户信息
+ (void)clearUserInfo {
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    [userD removeObjectForKey:KEY];
    
    [userD synchronize];
    
    sharManager = nil;
}

//获取用户信息
+ (UserInfoModel *)getUserInfo {
    
    //如果之前去过就不再取直接返回,否则从沙盒中去查找
    if (!sharManager) {
        NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
        //取出来用户信息
        NSData *data = [userD objectForKey:KEY];
        if (data) {
            sharManager = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        }else {
            sharManager = nil;
        }
    }
    
    return sharManager;
}

//判断用户是否登录
+(BOOL)isLoad {
    if ([UserInfoManager getUserInfo] == nil) {
        return NO;
    }else {
        return YES;
    }
}



@end
