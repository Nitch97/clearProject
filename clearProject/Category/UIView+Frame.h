//
//  UIView+Frame.h
//  budejie
//
//  Created by xiong on 2016/9/26.
//  Copyright © 2016年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

/*
 写分类:避免跟其他开发者产生冲突
 */

@property CGFloat LY_width;
@property CGFloat LY_height;
@property CGFloat LY_x;
@property CGFloat LY_y;
@property CGFloat LY_centerX;
@property CGFloat LY_centerY;
@property CGSize  LY_size;
/** 控件最右X */
@property (nonatomic, assign) CGFloat LY_right;
/** 控件最下Y */
@property (nonatomic, assign) CGFloat LY_bottom;


@end
