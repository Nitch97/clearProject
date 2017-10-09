//
//  UserInfoManager.h
//  JFB
//
//  Created by xiong on 2017/4/11.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfoModel.h"


@interface UserInfoManager : NSObject

//保存用户信息
+ (void)saveUserInfoWithModel:(UserInfoModel *)entity;

//清空用户信息
+ (void)clearUserInfo;

//获取用户信息
+ (UserInfoModel *)getUserInfo;

//判断用户是否登录
+ (BOOL)isLoad;



@end
