//
//  WelcomeViewController.m
//  clearProject
//
//  Created by Shao Wei Su on 2017/10/8.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatScrollView];
}

- (void)creatScrollView {
    //存放欢迎界面滚动图的数组
    NSArray *welcomeImageNameArray = @[@"guidepage1", @"guidepage2", @"guidepag3"];
    //创建 scrollView
    UIScrollView *welcomeScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, NITCH_MACRO_SCREENWIDTH, NITCH_MACRO_SCREENHEIGHT)];
    welcomeScrollView.pagingEnabled = YES;
    welcomeScrollView.showsHorizontalScrollIndicator = NO;
    welcomeScrollView.showsVerticalScrollIndicator = NO;
    welcomeScrollView.contentSize = CGSizeMake(NITCH_MACRO_SCREENWIDTH * welcomeImageNameArray.count, NITCH_MACRO_SCREENHEIGHT);
    for (int i = 0; i < welcomeImageNameArray.count; i++) {
        //根据welcomeImageNameArray的长度创建对应数量的欢迎图
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(NITCH_MACRO_SCREENWIDTH * welcomeImageNameArray.count, 0, NITCH_MACRO_SCREENWIDTH, NITCH_MACRO_SCREENHEIGHT)];
        //根据welcomeImageNameArray的下标对应图片
        imageView.image = [UIImage imageNamed: welcomeImageNameArray[i]];
        
        if (i == welcomeImageNameArray.count - 1) {
            imageView.userInteractionEnabled = YES;
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(skipToHomeVC)];
            [imageView addGestureRecognizer:tap];
        }
        [welcomeScrollView addSubview:imageView];
    }
    [self.view addSubview:welcomeScrollView];
}

- (void)skipToHomeVC {
    //修改产量值 FirstLaunch
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:FirstLaunch];
    
    //MARK...
}
@end
