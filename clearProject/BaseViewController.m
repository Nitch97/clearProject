//
//  BaseViewController.m
//  JFB
//
//  Created by xiong on 2017/4/10.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "BaseViewController.h"
#import "NCLiginViewController.h"


@interface BaseViewController ()

// HUD
@property (nonatomic, strong) MBProgressHUD *HUD;

@end

@implementation BaseViewController

#pragma mark --- viewDidLoad------------------

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

#pragma mark ------ 判断登录 -------------------------

//block回调方法
- (void)judgeUserLoginYESOrNO:(isLoginBlock)isLogin {
    //没有登录
    if (![UserInfoManager isLoad]) {
        
        //跳转到登录界面
        NCLiginViewController *loginVC = [[NCLiginViewController alloc] init];
        [UIApplication sharedApplication].keyWindow.rootViewController = loginVC;
        
    }else {
        self.isLoginBlock = isLogin;
        if (self.isLoginBlock) {
            self.isLoginBlock();
        }
    }
}

#pragma mark ---- 显示提示框 ------------------------
- (void)showAlertViewWithTitle:(NSString *)title {
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:title preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancelAC = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertVC addAction:cancelAC];
    [self presentViewController:alertVC animated:YES completion:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // 清内存
    [[SDImageCache sharedImageCache] clearMemory];
    [[SDImageCache sharedImageCache] clearDisk];
    [[SDImageCache sharedImageCache] cleanDisk];
    // 取消正在下载的操作
    [[SDWebImageManager sharedManager] cancelAll];
    // 清除内存缓存
    [[SDWebImageManager sharedManager].imageCache clearMemory];
    
}



@end
