//
//  FormValidator.h
//  Design
//
//  Created by fanghailong on 15/6/23.
//  Copyright (c) 2015年 ptteng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FormValidator : NSObject<UIAlertViewDelegate>

+(CGRect)rectWidthAndHeightWithStr:(NSString *)str AndFont:(CGFloat)fontFloat;

+(CGRect)rectWidthAndHeightWithStr:(NSString *)str AndFont:(CGFloat)fontFloat WithStrWidth:(CGFloat)widh;

@end
