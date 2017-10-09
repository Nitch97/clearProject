//
//  UserInfoModel.m
//  JFB
//
//  Created by Shao Wei Su on 2017/4/21.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "UserInfoModel.h"

@implementation UserInfoModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
    if ([key isEqualToString:@"id"]) {
        
        self._id = value;
    }
    
}

/*
 birthday,brandId,city,createTime,email,grade,id,inviteCode,nickName,openid
 
password,paypass,phone,preUserId,preUserPhone,profession,province,sex,unionid,userHeadUrl
userToken,validStatus
*/

#pragma mark --- 归档
- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:_birthday forKey:@"birthday"];
    [aCoder encodeObject:_brandId forKey:@"brandId"];
    [aCoder encodeObject:_city forKey:@"city"];
    [aCoder encodeObject:_createTime forKey:@"createTime"];
    [aCoder encodeObject:_email forKey:@"email"];
    [aCoder encodeObject:_grade forKey:@"grade"];
    [aCoder encodeObject:__id forKey:@"_id"];
    [aCoder encodeObject:_inviteCode forKey:@"inviteCode"];
    [aCoder encodeObject:_nickName forKey:@"nickName"];
    [aCoder encodeObject:_openid forKey:@"openid"];
    
    [aCoder encodeObject:_password forKey:@"password"];
    [aCoder encodeObject:_paypass forKey:@"paypass"];
    [aCoder encodeObject:_phone forKey:@"phone"];
    [aCoder encodeObject:_preUserId forKey:@"preUserId"];
    [aCoder encodeObject:_preUserPhone forKey:@"preUserPhone"];
    [aCoder encodeObject:_profession forKey:@"profession"];
    [aCoder encodeObject:_province forKey:@"province"];
    [aCoder encodeObject:_sex forKey:@"sex"];
    [aCoder encodeObject:_unionid forKey:@"unionid"];
    [aCoder encodeObject:_userHeadUrl forKey:@"userHeadUrl"];
    
    [aCoder encodeObject:_userToken forKey:@"userToken"];
    [aCoder encodeObject:_validStatus forKey:@"validStatus"];
    [aCoder encodeObject:_realnameStatus forKey:@"realnameStatus"];
    [aCoder encodeObject:_address forKey:@"address"];
    [aCoder encodeObject:_brandname forKey:@"brandname"];
    [aCoder encodeObject:_contactname forKey:@"contactname"];
    [aCoder encodeObject:_fullname forKey:@"fullname"];
    [aCoder encodeObject:_origcode forKey:@"origcode"];
    [aCoder encodeObject:_signcode forKey:@"signcode"];
    [aCoder encodeObject:_zipcode forKey:@"zipcode"];
}

#pragma mark --- 反归档
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    if (self = [super init]) {
        
        _birthday = [aDecoder decodeObjectForKey:@"birthday"];
        _brandId = [aDecoder decodeObjectForKey:@"brandId"];
        _city = [aDecoder decodeObjectForKey:@"city"];
        _createTime = [aDecoder decodeObjectForKey:@"createTime"];
        _email = [aDecoder decodeObjectForKey:@"email"];
        _grade = [aDecoder decodeObjectForKey:@"grade"];
        __id = [aDecoder decodeObjectForKey:@"_id"];
        _inviteCode = [aDecoder decodeObjectForKey:@"inviteCode"];
        _nickName = [aDecoder decodeObjectForKey:@"nickName"];
        _openid = [aDecoder decodeObjectForKey:@"openid"];
        
        _password = [aDecoder decodeObjectForKey:@"password"];
        _paypass = [aDecoder decodeObjectForKey:@"paypass"];
        _phone = [aDecoder decodeObjectForKey:@"phone"];
        _preUserId = [aDecoder decodeObjectForKey:@"preUserId"];
        _preUserPhone = [aDecoder decodeObjectForKey:@"preUserPhone"];
        _profession = [aDecoder decodeObjectForKey:@"profession"];
        _province = [aDecoder decodeObjectForKey:@"province"];
        _sex = [aDecoder decodeObjectForKey:@"sex"];
        _unionid = [aDecoder decodeObjectForKey:@"unionid"];
        _userHeadUrl = [aDecoder decodeObjectForKey:@"userHeadUrl"];
        
        _userToken = [aDecoder decodeObjectForKey:@"userToken"];
        _validStatus = [aDecoder decodeObjectForKey:@"validStatus"];
        _realnameStatus = [aDecoder decodeObjectForKey:@"realnameStatus"];
        _address = [aDecoder decodeObjectForKey:@"address"];
        _brandname = [aDecoder decodeObjectForKey:@"brandname"];
        _contactname = [aDecoder decodeObjectForKey:@"contactname"];
        _fullname = [aDecoder decodeObjectForKey:@"fullname"];
        _origcode = [aDecoder decodeObjectForKey:@"origcode"];
        _signcode = [aDecoder decodeObjectForKey:@"signcode"];
        _zipcode = [aDecoder decodeObjectForKey:@"zipcode"];
    }
    return self;
}








@end
