//
//  LYSelectBtnView.h
//  JFB
//
//  Created by Shao Wei Su on 2017/4/20.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LYSelectBtnViewDelegate <NSObject>

@optional

-(void)didClickTypeButtonAction:(UIButton*)button withIndex:(NSInteger)index;

@end



@interface LYSelectBtnView : UIView

@property(nonatomic,assign) id<LYSelectBtnViewDelegate> delegate;


/**
 *  设置btn  数组
 *
 *
 *  
 */
-(void)setTypeButtonTitles:(NSArray*)titles  withDownLableHeight:(CGFloat)downLabHeight andDeleagte:(id<LYSelectBtnViewDelegate>)deleget;



/**
 *  设置选中button
 *
 *  @param index <#index description#>
 */
-(void)setSelectButtonIndex:(NSInteger)index;

/**
 *  设置typeBtn选中Color
 *
 *  @param normalColor 默认Color
 *  @param selectColor 选中Color
 */
-(void)setTypeButtonNormalColor:(UIColor*)normalColor andSelectColor:(UIColor*)selectColor;


/**
 *  设置Downlable选中Color
 *
 *  @param selectColor <#selectColor description#>
 */
-(void)setTypeDownlableSelectColor:(UIColor*)selectColor;


/**
 *  设置Downlable Heoght
 *
 *
 */
-(void)setTypeDownlableHeight:(CGFloat)h;



@end
