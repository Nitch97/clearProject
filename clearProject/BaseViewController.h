//
//  BaseViewController.h
//  JFB
//
//  Created by xiong on 2017/4/10.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

// 登录或者未登录回调
typedef void(^isLoginBlock)();

@interface BaseViewController : UIViewController

#pragma mark -----------------判断登录--------------------

// block属性
@property (nonatomic, copy) isLoginBlock isLoginBlock;
// block回调方法
- (void)judgeUserLoginYESOrNO:(isLoginBlock)isLogin;

#pragma mark -----------------提示框--------------------
- (void)showAlertViewWithTitle:(NSString *)title;

@end
