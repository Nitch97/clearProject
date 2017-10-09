//
//  LYMarqueeBarView.h
//  JFB
//
//  Created by Shao Wei Su on 2017/5/30.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYMarqueeBarView : UIView

@property (nonatomic,retain) UIView *viewContainer;
- (void)start;

- (void)stop;

@end
