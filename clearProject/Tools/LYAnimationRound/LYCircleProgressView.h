//
//  LYCircleProgressView.h
//  JFB
//
//  Created by xiong on 2017/5/2.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYCircleProgressView : UIView

/**
 *进度条宽度
 */
@property (nonatomic,assign) CGFloat progressLineWidth;
/**
 *  背景线条宽度
 */
@property (nonatomic,assign) CGFloat backgroundLineWidth;
/**
 *  进度百分比
 */
@property (nonatomic,assign) CGFloat percentage;
/**
 *  背景填充颜色
 */
@property (nonatomic,strong) UIColor *backgroundStrokeColor;
/**
 *  进度条填充颜色
 */
@property (nonatomic,strong) UIColor *progressStrokeColor;
/**
 *  距离边框边距偏移量
 */
@property (nonatomic,assign) CGFloat offset;
/**
 *  步长
 */
@property (nonatomic,assign) CGFloat step;
/**
 *  数字字体颜色
 */
@property (nonatomic,strong) UIColor *digitTintColor;

- (void)setProgress:(CGFloat)percentage animated:(BOOL)animated;

@end
