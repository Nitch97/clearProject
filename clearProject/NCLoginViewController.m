//
//  NCLiginViewController.m
//  clearProject
//
//  Created by Shao Wei Su on 2017/10/8.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "NCLiginViewController.h"


@interface NCLiginViewController ()<UITextFieldDelegate>

// 输入框(手机号.登录密码)
@property (nonatomic, strong) UITextField *phoneF;
@property (nonatomic, strong) UITextField *passwordF;
// 图片(手机.密码.记住密码.)
@property (nonatomic, strong) UIImageView *phoneImv;
@property (nonatomic, strong) UIImageView *passwordImv;
@property (nonatomic, strong) UIImageView *rememberImv;
// 横线
@property (nonatomic, strong) UILabel *lineOne;
@property (nonatomic, strong) UILabel *lineTwo;
// 是否记住密码
@property (nonatomic, assign) BOOL isRemember;
// 所有产品数据原数组
@property (nonatomic, strong) NSMutableArray *allProArr;

@end

@implementation NCLiginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeMainUI];
}

- (void)makeMainUI {
    
}

//SUBVIEWS
- (void)creatLogo{
    //logo
    UIImageView *logoImage = [[UIImageView alloc]initWithFrame:CGRectMake((NITCH_MACRO_SCREENWIDTH - 155 * NITCH_MACRO_LYSIZE)/2, 80 *NITCH_MACRO_LYSIZE, 115 * NITCH_MACRO_LYSIZE, 115 * NITCH_MACRO_LYSIZE)];
    logoImage.image = [UIImage imageNamed:@"share_logo"];
    [self.view addSubview:logoImage];
}

- (void)maketextFieldUIWithLogoImageView: (UIImageView *)logoImageView{
    //登录界面手机图标
    self.phoneImv = [[UIImageView alloc]initWithFrame:CGRectMake(40 * NITCH_MACRO_LYSIZE, logoImageView.LY_y + logoImageView.LY_height + 60 * NITCH_MACRO_LYSIZE, 30 * NITCH_MACRO_LYSIZE, 30 * NITCH_MACRO_LYSIZE)];
    self.phoneImv.image = [UIImage imageNamed:@"logoin_phone_off"];
    [self.view addSubview:self.phoneImv];
    //手机输入框
    self.phoneF = [[UITextField alloc]initWithFrame:CGRectMake(self.phoneImv.LY_x + self.phoneImv.LY_width + 10 * NITCH_MACRO_LYSIZE, self.phoneImv.LY_y, NITCH_MACRO_SCREENWIDTH - 30 * NITCH_MACRO_LYSIZE - self.phoneImv.LY_x - self.phoneImv.LY_width, 35 * NITCH_MACRO_LYSIZE)];
    self.phoneF.placeholder = @"请输入手机号码";
    self.phoneF.textColor = NITCH_MACRO_MainColor;
    self.phoneF.delegate = self;
    self.phoneF.font = [UIFont systemFontOfSize:16];
    self.phoneF.keyboardType = UIKeyboardTypeNumberPad;
    self.phoneF.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.phoneF.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"username"];
    //MARK>>>>
    //    [self.phoneF addTarget:self
    //                    action:@selector() forControlEvents:UIControlEventAllEditingEvents];
    [self.view addSubview:self.phoneF];
    //横线
    self.lineOne = [[UILabel alloc]initWithFrame:CGRectMake(20 * NITCH_MACRO_LYSIZE, self.phoneImv.LY_y + self.phoneImv.LY_height + 10 * NITCH_MACRO_LYSIZE, NITCH_MACRO_SCREENWIDTH - 40 * NITCH_MACRO_LYSIZE, 1 * NITCH_MACRO_LYSIZE)];
    self.lineOne.backgroundColor = NITCH_MACRO_FASTCREAT_COLOR(210, 210, 210);
    [self.view addSubview:self.lineOne];
    //登录界面密码图标
    self.passwordImv = [[UIImageView alloc]initWithFrame:CGRectMake(self.phoneImv.LY_x, self.lineOne.LY_y + self.lineOne.LY_y + self.lineOne.LY_height + 10 * NITCH_MACRO_LYSIZE, self.phoneImv.LY_width, self.phoneImv.LY_height)];
    self.passwordImv.image = [UIImage imageNamed:@"login_pass_off"];
    [self.view addSubview:self.passwordImv];
    //输入框
    self.passwordF = [[UITextField alloc]initWithFrame:CGRectMake(self.passwordImv.LY_x + self.passwordImv.LY_width + 10 * NITCH_MACRO_LYSIZE, self.passwordImv.LY_y, NITCH_MACRO_SCREENWIDTH - 30 * NITCH_MACRO_LYSIZE - self.passwordImv.LY_x - self.passwordImv.LY_width, self.passwordF.LY_height)];
    self.passwordF.delegate = self;
    self.passwordF.placeholder = @"请输入登录密码";
    self.passwordF.textColor = NITCH_MACRO_MainColor;
    self.passwordF.secureTextEntry = YES;
    self.passwordF.font = [UIFont systemFontOfSize:16];
    self.passwordF.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.passwordF.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"password"];
    //MARK>>>
    //    [self.passwordF addTarget:self action:<#(nonnull SEL)#> forControlEvents:UIControlEventAllEditingEvents];
    [self.view addSubview:self.passwordF];
    //横线2
    self.lineTwo = [[UILabel alloc]initWithFrame:CGRectMake(self.lineOne.LY_x, self.passwordImv.LY_y + self.passwordImv.LY_height + 10 * NITCH_MACRO_LYSIZE, NITCH_MACRO_SCREENWIDTH - 40 * NITCH_MACRO_LYSIZE, 1 * NITCH_MACRO_LYSIZE)];
    self.lineTwo.backgroundColor = NITCH_MACRO_FASTCREAT_COLOR(210, 210, 210);
    [self.view addSubview:self.lineTwo];
    //登录界面记住密码图标
    self.rememberImv = [[UIImageView alloc]initWithFrame:CGRectMake(self.passwordImv.LY_x + 15 * NITCH_MACRO_LYSIZE/2, self.lineTwo.LY_y + self.lineTwo.LY_height + 10 * NITCH_MACRO_LYSIZE, 15 * NITCH_MACRO_LYSIZE, 15 * NITCH_MACRO_LYSIZE)];
    //判断密码字数来是否开启记住密码
    if ([[[NSUserDefaults standardUserDefaults]objectForKey:@"password"] length] != 0) {
        self.rememberImv.image = [UIImage imageNamed:@"login_remember_on"];
        self.isRemember = YES;
    }else {
        self.rememberImv.image = [UIImage imageNamed:@"login_remember_off"];
        self.isRemember = NO;
    }
    [self.view addSubview:self.rememberImv];
    //记住密码按钮
    UIButton *rememberBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rememberBtn.frame = CGRectMake(self.rememberImv.LY_y + self.rememberImv.LY_width + 5 * NITCH_MACRO_LYSIZE, self.rememberImv.LY_y, 90 * NITCH_MACRO_LYSIZE, self.rememberImv.LY_height);
    rememberBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    rememberBtn.contentVerticalAlignment = UIControlContentHorizontalAlignmentLeft;
    [rememberBtn setTitle:@"记住密码" forState:UIControlStateNormal];
    [rememberBtn setTitleColor:NITCH_MACRO_MainColor forState:UIControlStateNormal];
    [rememberBtn addTarget:self action:@selector(rememberPasswordAC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rememberBtn];
    //MARK>>>
    //    UIButton *rememberBtnTwo = [UIButton buttonWithType:UIButtonTypeCustom];
    //    UIButton *rememberBtnTwo = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //    rememberBtnTwo.frame = self.rememberImv.frame;
    //    [rememberBtnTwo addTarget:self action:@selector(rememberPasswordAC) forControlEvents:(UIControlEventTouchUpInside)];
    //    [self.view addSubview:rememberBtnTwo];
    //忘记密码
    UIButton *fogotBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    fogotBtn.frame = CGRectMake(NITCH_MACRO_SCREENWIDTH - 100 * NITCH_MACRO_LYSIZE, rememberBtn.LY_y, 90 * NITCH_MACRO_LYSIZE, rememberBtn.LY_height);
    fogotBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    fogotBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [fogotBtn setTitle:@"忘记密码?" forState:UIControlStateNormal];
    [fogotBtn setTitleColor:NITCH_MACRO_MainColor forState:UIControlStateNormal];
    //    [fogotBtn addTarget:self action:@selector() forControlEvents:<#(UIControlEvents)#>]
    [self.view addSubview:fogotBtn];
    // 根据输入框盘的状态判状态
    if (self.phoneF.text.length != 0) {
        
        self.phoneImv.image = [UIImage imageNamed:@"login_phone_on"];
        self.lineOne.backgroundColor = NITCH_MACRO_MainColor;
    }else {
        
        self.phoneImv.image = [UIImage imageNamed:@"login_phone_off"];
        self.lineOne.backgroundColor = NITCH_MACRO_FASTCREAT_COLOR(210, 210, 210);
    }
    if (self.passwordF.text.length != 0) {
        
        self.passwordImv.image = [UIImage imageNamed:@"login_pass_on"];
        self.lineTwo.backgroundColor = NITCH_MACRO_MainColor;
    }else {
        
        self.passwordImv.image = [UIImage imageNamed:@"login_pass_off"];
        self.lineTwo.backgroundColor = NITCH_MACRO_FASTCREAT_COLOR(210, 210, 210);
    }
}

- (void)makeBtnUI {
    
    // 3.1 登录按钮
    UIButton *loginBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    loginBtn.frame = CGRectMake(20 * NITCH_MACRO_LYSIZE, self.rememberImv.LY_y + self.rememberImv.LY_height + 20 * NITCH_MACRO_LYSIZE, NITCH_MACRO_SCREENWIDTH - 40 * NITCH_MACRO_LYSIZE, 35 * NITCH_MACRO_LYSIZE);
    loginBtn.backgroundColor = NITCH_MACRO_MainColor;
    loginBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [loginBtn setTitle:@"登录" forState:(UIControlStateNormal)];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [loginBtn addTarget:self action:@selector(loginBtnHandleAC) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:loginBtn];
    // 3.2 注册按钮
    UIButton *registerBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    registerBtn.frame = CGRectMake(loginBtn.LY_x, loginBtn.LY_y+loginBtn.LY_height+10*NITCH_MACRO_LYSIZE, loginBtn.LY_width, loginBtn.LY_height);
    registerBtn.titleLabel.font   = [UIFont systemFontOfSize:16];
    registerBtn.layer.borderColor = NITCH_MACRO_MainColor.CGColor;
    registerBtn.layer.borderWidth = 1 * NITCH_MACRO_LYSIZE;
    [registerBtn setTitle:@"注册" forState:(UIControlStateNormal)];
    [registerBtn setTitleColor:NITCH_MACRO_MainColor forState:(UIControlStateNormal)];
    [registerBtn addTarget:self action:@selector(registerBtnHandleAC) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:registerBtn];
    
}
#pragma mark --- 点击事件 ----------------
#pragma mark --- 记住密码点击事件
- (void)rememberPasswordAC {
    
    if (self.isRemember) {
        
        self.rememberImv.image = [UIImage imageNamed:@"login_remember_off"];
        self.isRemember = NO;
    }else {
        
        self.rememberImv.image = [UIImage imageNamed:@"login_remember_on"];
        self.isRemember = YES;
    }
}
#pragma mark --- 忘记密码点击事件
- (void)fogotPasswordAC {
    //跳转到忘记密码
    //    ZDFogotPassViewController *fogotVC = [[ZDFogotPassViewController alloc] init];
    //    [self presentViewController:fogotVC animated:YES completion:nil];
}
#pragma mark --- 登录按钮点击事件
- (void)loginBtnHandleAC {
    
    // 01 判断
    if (self.phoneF.text.length < 11 || self.passwordF.text.length == 0) {
        
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请输入正确的账户" preferredStyle:(UIAlertControllerStyleAlert)];
        UIAlertAction *cancelAC = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleCancel) handler:nil];
        [alertVC addAction:cancelAC];
        [self presentViewController:alertVC animated:YES completion:nil];
    }else {
        
        // 展示读取状态
        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        if (self.isRemember) {
            
            // 保存账户信息
            [[NSUserDefaults standardUserDefaults] setObject:self.phoneF.text forKey:@"username"];
            [[NSUserDefaults standardUserDefaults] setObject:self.passwordF.text forKey:@"password"];
        }else {
            
            // 保存账户信息(不保存密码)
            [[NSUserDefaults standardUserDefaults] setObject:self.phoneF.text forKey:@"username"];
            [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"password"];
        }
        // 02 请求用户数据
        [self requestLoginData];
        //        LYTabBarController *vc = [[LYTabBarController alloc] init];
        //        [UIApplication sharedApplication].keyWindow.rootViewController = vc;
    }
}
#pragma mark --- 注册按钮点击事件
- (void)registerBtnHandleAC {
    
    ZDRegisterViewController *registerVC = [[ZDRegisterViewController alloc] init];
    [self presentViewController:registerVC animated:YES completion:nil];
}
#pragma mark --- 输入框代理事件 --------
- (void)textFieldChangeAction {
    
    // 修改图片和横线颜色
    if (self.phoneF.text.length == 0) {
        
        self.phoneImv.image = [UIImage imageNamed:@"login_phone_off"];
        self.lineOne.backgroundColor = LYColor(210, 210, 210);
    }else {
        
        self.phoneImv.image = [UIImage imageNamed:@"login_phone_on"];
        self.lineOne.backgroundColor = LYMainColor;
    }
    if (self.passwordF.text.length == 0) {
        
        self.passwordImv.image = [UIImage imageNamed:@"login_pass_off"];
        self.lineTwo.backgroundColor = LYColor(210, 210, 210);
    }else {
        
        self.passwordImv.image = [UIImage imageNamed:@"login_pass_on"];
        self.lineTwo.backgroundColor = LYMainColor;
    }
}

#pragma mark --- 点击空白收回键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}

#pragma mark --- 请求数据
- (void)requestLoginData {
    
    // 请求数据
    NSDictionary *logindic = @{@"phone":self.phoneF.text, @"password":self.passwordF.text, @"brand_id":KBrandId};
    [NetWorkManager requestForPOSTWithUrl:[NSString stringWithFormat:@"%@%@%@", KMainUrl, KBanben, KLoginUrl] parameter:logindic success:^(id responseObject) {
        
        LYLog(@"登录数据%@", responseObject);
        if ([STR(responseObject[@"resp_code"]) isEqualToString:@"000000"]) {
            
            // 01 保存用户信息
            // 每次登录前清空内容信息
            [UserInfoManager clearUserInfo];
            // 保存用户信息
            UserInfoModel *userModel = [[UserInfoModel alloc] init];
            [userModel setValuesForKeysWithDictionary:responseObject[@"result"]];
            [UserInfoManager saveUserInfoWithModel:userModel];
            
            // 02 跳转到主页面
            LYTabBarController *LYTabBar = [[LYTabBarController alloc] init];
            LYTabBar.selectedIndex = 1;
            [UIApplication sharedApplication].keyWindow.rootViewController = LYTabBar;
        }else {
            
            // 失败提示
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"温馨提示" message:[NSString stringWithFormat:@"登录失败\n原因:%@", responseObject[@"resp_message"]] preferredStyle:(UIAlertControllerStyleAlert)];
            UIAlertAction *cancelAC = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction * _Nonnull action) {
                
            }];
            [alertVC addAction:cancelAC];
            [self presentViewController:alertVC animated:YES completion:nil];
        }
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    } failure:^(NSError *error) {
        
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    }];
    
}

#pragma mark --- 版本数据请求 -----------------
- (void)requesDataForBanben {
    
    [NetWorkManager requestForGETWithUrl:[NSString stringWithFormat:@"%@%@%@", KMainUrl,KBanben,KBanbenURL] parameter:@{@"brand_id":KBrandId} success:^(id responseObject) {
        LYLog(@"%@", responseObject);
        NSString *banben = [NSString stringWithFormat:@"%@", responseObject[@"result"][@"iOS"][@"version"]];
        [[NSUserDefaults standardUserDefaults] setValue:[NSString stringWithFormat:@"%@", banben] forKey:@"banben"];
        
    } failure:^(NSError *error) {
        
    }];
}
#pragma mark --- 品牌信息
- (void)requestDataForBrandInfo {
    
    NSDictionary *brandDic = @{@"brand_id":KBrandId};
    [NetWorkManager requestForGETWithUrl:[NSString stringWithFormat:@"%@%@%@", KMainUrl,KBanben,KCheckBrandInfoUrl] parameter:brandDic success:^(id responseObject) {
        
        LYLog(@"品牌信息%@", responseObject);
        if ([responseObject[@"resp_code"] isEqualToString:@"000000"]) {
            
            [[NSUserDefaults standardUserDefaults] setValue:STR(responseObject[@"result"][@"brandPhone"]) forKey:KBrandPhone];
            [[NSUserDefaults standardUserDefaults] setValue:STR(responseObject[@"result"][@"brandQQ"]) forKey:KBrandQQ];
            [[NSUserDefaults standardUserDefaults] setValue:STR(responseObject[@"result"][@"brandWeiXin"]) forKey:KBrandWeChat];
            
        }
    } failure:^(NSError *error) {
        
        
    }];
}
#pragma mark --- 贴牌配置
- (void)requestDataForBrandSetting {
    
    NSDictionary *brandDic = @{@"brand_id":KBrandId};
    [NetWorkManager requestForPOSTWithUrl:[NSString stringWithFormat:@"%@%@%@", KMainUrl,KBanben,KCheckBrandSetUrl] parameter:brandDic success:^(id responseObject) {
        
        LYLog(@"贴牌配置%@", responseObject);
        if ([responseObject[@"resp_code"] isEqualToString:@"000000"]) {
            
            if ([responseObject[@"result"] count] != 0) {
                
                [[NSUserDefaults standardUserDefaults] setValue:STR([responseObject[@"result"][0] valueForKey:@"peopleNum"]) forKey:KAutoPeopleNum];
            }
        }
    } failure:^(NSError *error) {
        
        
    }];
}

@end
