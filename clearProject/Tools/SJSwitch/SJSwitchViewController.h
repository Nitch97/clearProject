//
//  SJSwitchViewController.h
//  testChildVC
//
//  Created by 陈少杰 on 14/12/19.
//  Copyright (c) 2014年 陈少杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SJSwitchViewControllerDelegate<NSObject>

/**
 *		某个序列号的VC
 *
 */
-(UIViewController*)switchViewControllerDidGetViewControllerAtIndex:(NSUInteger)index;

/**
 *		总数
 */
-(NSInteger)numberOfSwitchViewController;

@optional
/**
	加载在View上的视图
  	viewController 	哪个VC
 *
 *	 
 */
-(UIView*)viewWithSwithViewController:(id)viewController;

/**
 *	加载在View上的视图尺寸
 *
 *	 
 */
-(CGRect)rectOfView;

/**
 *	@brief	滑到最右端
 *
 *	 
 */
-(void)switchViewControllerDidDragRight;

/**
 *	@brief	滑到最左端
 *
 *	 	
 */
-(void)switchViewControllerDidDragLeft;

-(void)switchViewControllerDidStopAtIndex:(NSInteger)index;

/**
 *  监听view的滑动
 */
- (void)switchViewControllerDidscoll:(CGPoint)point;

@end

@interface SJSwitchViewController : UIViewController<SJSwitchViewControllerDelegate>
@property(nonatomic)NSMutableArray *viewControllers;
@property(nonatomic)NSInteger showingIndex;
-(void)setShowingIndex:(NSInteger)showingIndex animate:(BOOL)animate;
@end

