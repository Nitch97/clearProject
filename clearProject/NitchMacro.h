//
//  NitchMacro.h
//  clearProject
//
//  Created by Shao Wei Su on 2017/9/30.
//  Copyright © 2017年 LY. All rights reserved.
//

#ifndef NitchMacro_h
#define NitchMacro_h

// NITCH'MacroFile
//主题颜色
#define NITCH_MACRO_MainColor [UIColor colorWithRed:133/255.0 green:46/255.0 blue:110/255.0 alpha:1.0]


//固定宏
//屏幕数据
#define NITCH_MACRO_SCREENWIDTH [[UIScreen mainScreen] bounds].size.width
#define NITCH_MACRO_SCREENHEIGHT [[UIScreen mainScreen] bounds].size.height
#define NITCH_MACRO_SCREENNAINSCREEN [UIScreen mainScreen]

//随机颜色
#define NITCH_MACRO_RANDOMCOLOR [UIColor colorWithRed:arc4random() % 256/255.0 green:arc4random() % 256/255.0 blue:arc4random() % 256/255.0 alpha:arc4random() % 256/255.0]

//RGB
#define NITCH_MACRO_FASTCREAT_COLOR(r,g,b) [UIColor colorWithRed:(r)/225.0 green:(g)/225.0 blue:(b)/225.0 alpha:1.0]

// 屏幕适配比率
#define NITCH_MACRO_LYSIZE ([UIScreen mainScreen].bounds.size.width)/320
#define NITCH_MACRO_LYSIZEY ([UIScreen mainScreen].bounds.size.height)/568




#endif /* NitchMacro_h */
