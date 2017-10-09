//
//  AppDelegate+JPush.h
//  JPush
//
//  Created by fangxue on 2017/4/10.
//  Copyright © 2017年 fangxue. All rights reserved.

#import "AppDelegate+JPush.h"

// #import <AdSupport/AdSupport.h>

@implementation AppDelegate (JPush)

-(void)registerJPush:(UIApplication *)application options:(NSDictionary *)launchOptions
{
    //    添加初始化APNs代码
    //Required
    //notice: 3.0.0及以后版本注册可以这样写，也可以继续用之前的注册方式
    JPUSHRegisterEntity * entity = [[JPUSHRegisterEntity alloc] init];
    entity.types = JPAuthorizationOptionAlert|JPAuthorizationOptionBadge|JPAuthorizationOptionSound;
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        // 可以添加自定义categories
        // NSSet<UNNotificationCategory *> *categories for iOS10 or later
        // NSSet<UIUserNotificationCategory *> *categories for iOS8 and iOS9
    }
    [JPUSHService registerForRemoteNotificationConfig:entity delegate:self];
    
    
    //    添加初始化JPush代码
    // Optional
    // 获取IDFA
    // 如需使用IDFA功能请添加此代码并在初始化方法的advertisingIdentifier参数中填写对应值
    // NSString *advertisingId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    
    // NSString *idfv = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    
    // NSLog(@"获取IDFA:%@",advertisingId);
    // NSLog(@"获取IDFV:%@",idfv);
    // Required
    // init Push
    // notice: 2.1.5版本的SDK新增的注册方法，改成可上报IDFA，如果没有使用IDFA直接传nil
    // 如需继续使用pushConfig.plist文件声明appKey等配置内容，请依旧使用[JPUSHService setupWithOption:launchOptions]方式初始化。
    [JPUSHService setupWithOption:launchOptions appKey:KJPush
                          channel:@"Channel"
                 apsForProduction:isProduction
            advertisingIdentifier:nil];
    
    //    [JPUSHService setLogOFF];
}

//Required必须
//注册APNs成功并上报DeviceToken
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    
    /// Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:deviceToken];
}

//Optional 可选
- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    //Optional
    NSLog(@"did Fail To Register For Remote Notifications With Error: %@", error);
}


#pragma mark- JPUSHRegisterDelegate

// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(NSInteger))completionHandler {
    // Required
    NSDictionary * userInfo = notification.request.content.userInfo;
    if([notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        
//        [JPUSHService handleRemoteNotification:userInfo];
        [self didRecevieNotification:userInfo];
        //        在应用内运行
        NSLog(@"didRecevieNotification74");
    }
    completionHandler(UNNotificationPresentationOptionAlert); // 需要执行这个方法，选择是否提醒用户，有Badge、Sound、Alert三种类型可以选择设置
}

// iOS 10 Support
- (void)jpushNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)())completionHandler {
    // Required
    NSDictionary * userInfo = response.notification.request.content.userInfo;
    if([response.notification.request.trigger isKindOfClass:[UNPushNotificationTrigger class]]) {
        
        [JPUSHService handleRemoteNotification:userInfo];
        [self didRecevieNotification:userInfo];
        //        在应用外点击导航栏推送信息
        NSLog(@"didRecevieNotification86");
    }
    completionHandler();  // 系统要求执行这个方法
}

//require 设置角标和清除角标
- (void)applicationDidEnterBackground:(UIApplication *)application {
    
    //    设置本地icon角标
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
    //    设置极光后台角标
    [JPUSHService setBadge:0];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [JPUSHService handleRemoteNotification:userInfo];
    [self didRecevieNotification:userInfo];
    NSLog(@"didRecevieNotification96");
    completionHandler(UIBackgroundFetchResultNewData);
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    // Required,For systems with less than or equal to iOS6
    [JPUSHService handleRemoteNotification:userInfo];
    [self didRecevieNotification:userInfo];
    NSLog(@"didRecevieNotification105");
}


#pragma mark -----自定义的东西-----

//处理收到的提醒
-(void)didRecevieNotification :(NSDictionary *)receiveNotifi
{
    LYLog(@"收到的消息 == %@", receiveNotifi);
    NSString *pushTitle = receiveNotifi[@"aps"][@"title"];
    NSString *pushInfo = receiveNotifi[@"aps"][@"alert"];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:pushTitle message:pushInfo delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
    
}
- (NSString *)logDic:(NSDictionary *)dic {
    if (![dic count]) {
        return nil;
    }
    NSString *tempStr1 =
    [[dic description] stringByReplacingOccurrencesOfString:@"\\u"
                                                 withString:@"\\U"];
    NSString *tempStr2 =
    [tempStr1 stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\""];
    NSString *tempStr3 =
    [[@"\"" stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString *str =
    [NSPropertyListSerialization propertyListWithData:tempData options:NSPropertyListImmutable format:NULL error:NULL];
    return str;
}
@end
