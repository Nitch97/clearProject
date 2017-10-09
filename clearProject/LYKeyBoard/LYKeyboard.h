//
//  LYKeyboard.h
//  JFB
//
//  Created by Shao Wei Su on 2017/4/23.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYKeyboard : UIView

@property (copy, nonatomic, nullable) void (^done)();       // 点击确定执行的回调
@property (nonatomic) UIColor *tintColor;                   // 主色调（针对确定按钮）

- (instancetype)initWithTintColor:(UIColor *)tintColor;

@end

NS_ASSUME_NONNULL_END
