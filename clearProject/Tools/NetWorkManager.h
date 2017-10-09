//
//  NetWorkManager.h
//  JFB
//
//  Created by xiong on 2017/4/11.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NetWorkManager : NSObject

/**
 *  GET网络请求
 *
 *  @param url      请求的网址
 *  @param dic      请求需要的参数
 *  @param Success  请求成功回调
 *  @param conError 请求失败的回调
 */
+ (void)requestForGETWithUrl:(NSString *)url parameter:(NSDictionary *)dic success:(void(^)(id responseObject))Success failure:(void(^)(NSError *error))conError;


/**
 *  POST网络请求
 *
 *  @param url      请求的网址
 *  @param dic      请求需要的参数
 *  @param Success  请求成功回调
 *  @param conError 请求失败的回调
 */
+ (void)requestForPOSTWithUrl:(NSString *)url parameter:(NSDictionary *)dic success:(void(^)(id responseObject))Success failure:(void(^)(NSError *error))conError;


@end
