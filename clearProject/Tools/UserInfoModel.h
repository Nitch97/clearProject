//
//  UserInfoModel.h
//  JFB
//
//  Created by Shao Wei Su on 2017/4/21.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "BaseModel.h"

@interface UserInfoModel : BaseModel<NSCoding>

@property (nonatomic, copy) NSString *_id;           // 用户id
@property (nonatomic, copy) NSString *inviteCode;    // 邀请码
@property (nonatomic, copy) NSString *password;      // 登录密码
@property (nonatomic, copy) NSString *paypass;       // 支付密码
@property (nonatomic, copy) NSString *phone;         // 手机号

@property (nonatomic, copy) NSString *preUserId;     // 上级编号
@property (nonatomic, copy) NSString *preUserPhone;  // 上级手机号
@property (nonatomic, copy) NSString *nickName;      // 昵称
@property (nonatomic, copy) NSString *brandId;       // 品牌编号
@property (nonatomic, copy) NSString *grade;         // 级别

@property (nonatomic, copy) NSString *birthday;      // 生日
@property (nonatomic, copy) NSString *city;          // 城市
@property (nonatomic, copy) NSString *createTime;    // 创建时间
@property (nonatomic, copy) NSString *email;         // 邮箱
@property (nonatomic, copy) NSString *openid;        // 微信分享

@property (nonatomic, copy) NSString *profession;    // 职业
@property (nonatomic, copy) NSString *province;      // 省份
@property (nonatomic, copy) NSString *sex;           // 性别
@property (nonatomic, copy) NSString *unionid;       // 微信分享用
@property (nonatomic, copy) NSString *userHeadUrl;   // 头像地址

@property (nonatomic, copy) NSString *userToken;     // token
@property (nonatomic, copy) NSString *validStatus;   // 有效状态
@property (nonatomic, copy) NSString *realnameStatus;// 实名审核状态
@property (nonatomic, copy) NSString *address;       // 地址
@property (nonatomic, copy) NSString *brandname;     // 品牌名称

@property (nonatomic, copy) NSString *contactname;   // 联系人姓名
@property (nonatomic, copy) NSString *fullname;      // 详细姓名
@property (nonatomic, copy) NSString *origcode;      // 发起方编码
@property (nonatomic, copy) NSString *signcode;      // 用户标识编码
@property (nonatomic, copy) NSString *zipcode;       //

/*
 {
 address = "<null>";
 birthday = "<null>";
 brandId = 1;
 brandname = "<null>";
 city = "<null>";
 
 contactname = "<null>";
 createTime = "2017-04-07 18:03:35";
 email = "<null>";
 fullname = "<null>";
 grade = 1;
 
 id = 132068200;
 inviteCode = "<null>";
 nickName = af;
 openid = "<null>";
 origcode = "<null>";
 
 password = e10adc3949ba59abbe56e057f20f883e;
 paypass = e10adc3949ba59abbe56e057f20f883e;
 phone = 18300700074;
 preUserId = 865281718;
 preUserPhone = 18895636532;
 
 profession = "<null>";
 province = "<null>";
 realnameStatus = 1;(0:审核中 1:审核通过 2:审核拒绝)
 sex = "<null>";
 signcode = "<null>";
 
 unionid = "<null>";
 userHeadUrl = "<null>";
 userToken = "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJKdUhlaSIsImV4cCI6MTQ5NDY4NjM5MiwidXNlcklkIjoxMzIwNjgyMDB9.9bMYZOqOmqNFVZ9vBO_WFjx5NjNr_jSqEtolap6yuOZimGIxSUEb9gwL-PB9boPan5nJduQyBsrI1vLgQeObjw";
 validStatus = 0;
 zipcode = "<null>";
 
 }
 
 };
*/








@end
