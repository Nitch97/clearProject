//
//  JFBHong.h
//  JFB
//
//  Created by xiong on 2017/4/7.
//  Copyright © 2017年 LY. All rights reserved.
//

#ifndef JFBHong_h
#define JFBHong_h


// 存放宏文件

#pragma mark --- 宏定义 ----------------------------------------------

// 01 自定义log
#ifdef DEBUG
#define LYLog(...) NSLog(__VA_ARGS__)
#else
#define LYLog(...)
#endif
// 02 屏幕宽高
//屏幕的宽度
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width
//屏幕的高度
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height
// 03 随即颜色
#define RandomCorlor [UIColor colorWithRed:arc4random() % 256/255.0 green:arc4random() % 256/255.0 blue:arc4random() % 256/255.0 alpha:arc4random() % 256/255.0]
// 05 将其他类型转换为字符串
#define STR(string) [NSString stringWithFormat:@"%@", string]
// 06 屏幕适配比率
#define LYSize ([UIScreen mainScreen].bounds.size.width)/320
#define LYSizeY ([UIScreen mainScreen].bounds.size.height)/568
// 07 主题颜色LYColor(44, 140, 236)221,79,55
#define LYMainColor [UIColor colorWithRed:221/255.0 green:79/255.0 blue:55/255.0 alpha:1.0]
// 08 RGB
#define LYColor(r,g,b) [UIColor colorWithRed:(r)/225.0 green:(g)/225.0 blue:(b)/225.0 alpha:1.0]




#endif /* JFBHong_h */
