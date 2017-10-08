//
//  AppDelegate.m
//  clearProject
//
//  Created by Shao Wei Su on 2017/9/30.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

-(void)isFirstLaunch{
    
    self.window = [[UIWindow alloc]initWithFrame:NITCH_MACRO_SCREENNAINSCREEN.bounds];
    
    //判断系统是否为第一次启动
    BOOL firstLaunch = [[NSUserDefaults standardUserDefaults] boolForKey: FirstLaunch];
//    if (!FirstLaunch)
    

    
}

@end
