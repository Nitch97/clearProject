//
//  NetWorkManager.m
//  JFB
//
//  Created by xiong on 2017/4/11.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "NetWorkManager.h"


@implementation NetWorkManager


/**
 *  GET网络请求
 *
 *  @param url      请求的网址
 *  @param dic      请求需要的参数
 *  @param Success  请求成功回调
 *  @param conError 请求失败的回调
 */


+ (void)requestForGETWithUrl:(NSString *)url parameter:(NSDictionary *)dic success:(void(^)(id responseObject))Success failure:(void(^)(NSError *error))conError {
    //创建一个网络请求管理对象
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //设置可接受的数据类型
    manager.responseSerializer.acceptableContentTypes =[NSSet setWithObjects:@"text/html",@"application/json",@"text/json",@"text/javascript",@"text/plain", nil];
    [manager GET:url parameters:dic progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //将请求成功返回的结果回调回去
        Success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //回调请求失败的错误信息
        conError(error);
    }];
}


/**
 *  POST网络请求
 *
 *  @param url
 请求的网址
 *  @param dic      请求需要的参数
 *  @param Success  请求成功回调
 *  @param conError 请求失败的回调
 */
+ (void)requestForPOSTWithUrl:(NSString *)url parameter:(NSDictionary *)dic success:(void(^)(id responseObject))Success failure:(void(^)(NSError *error))conError {
    //创建一个网络请求管理对象
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //设置可接受的数据类型
    manager.responseSerializer.acceptableContentTypes =[NSSet setWithObjects:@"text/html",@"application/json",@"text/json",@"text/javascript",@"text/plain", nil];
    [manager POST:url parameters:dic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        Success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        conError(error);
    }];
}

    

@end
