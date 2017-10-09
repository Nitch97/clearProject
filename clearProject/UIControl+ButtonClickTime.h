//
//  UIControl+ButtonClickTime.h
//  JFB
//
//  Created by Shao Wei Su on 2017/9/20.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (ButtonClickTime)

@property (nonatomic, assign) NSTimeInterval LY_acceptEventInterval;//添加点击事件的间隔时间

@property (nonatomic, assign) BOOL LY_ignoreEvent;//是否忽略点击事件,不响应点击事件


@end
