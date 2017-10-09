//
//  LYBottomPickView.h
//  JFB
//
//  Created by xiong on 2017/4/28.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYPickView.h"


@interface LYBottomPickView : UIView

@property (nonatomic,weak)UIView *grayBgView;
@property (nonatomic,weak)LYPickView *editView;
@property (nonatomic,weak)UIViewController *controller;
@property (nonatomic,copy)void (^bottomResultPresent)(NSString *);
@property (nonatomic,strong)UITapGestureRecognizer *recognizer;

+(instancetype)showWithController:(UIViewController *)controller andData:(NSArray *)data;
-(instancetype)initWithController:(UIViewController *)controller;

+(void)showEditPickerViewWithController:(UIViewController *)controller andData:(NSArray *)data andBlock:(void (^)(NSString *temp))bottomResultPresent;

@end
