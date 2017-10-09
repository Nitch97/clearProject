//
//  NCRegisterViewController.m
//  clearProject
//
//  Created by Shao Wei Su on 2017/10/9.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "NCRegisterViewController.h"
#import "NCLoginViewController.h"
@interface NCRegisterViewController ()

// 标题背景
@property (nonatomic, strong) UIView *bjView;
// 输入框(手机号.登录密码.确认登录密码.交易密码.确认交易密码)
@property (nonatomic, strong) UITextField *phoneF;
@property (nonatomic, strong) UITextField *passwordF;
@property (nonatomic, strong) UITextField *surePasswordF;
@property (nonatomic, strong) UITextField *paypassF;
@property (nonatomic, strong) UITextField *surePaypassF;
// 输入框(验证码.推荐人)
@property (nonatomic, strong) UITextField *yanzhengmaF;
@property (nonatomic, strong) UITextField *topPhoneF;
// 验证码按钮
@property (nonatomic, strong) UIButton *sendBtn;

@end

@implementation NCRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



@end
