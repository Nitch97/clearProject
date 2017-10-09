//
//  UIControl+ButtonClickTime.m
//  JFB
//
//  Created by Shao Wei Su on 2017/9/20.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "UIControl+ButtonClickTime.h"

static const char *UIControl_acceptEventInterval = "UIControl_acceptEventInterval";

static const char *UIcontrol_ignoreEvent = "UIcontrol_ignoreEvent";

@implementation UIControl (ButtonClickTime)

- (NSTimeInterval)LY_acceptEventInterval {
    
    return [objc_getAssociatedObject(self, UIControl_acceptEventInterval) doubleValue];
    
}

- (void)setLY_acceptEventInterval:(NSTimeInterval)LY_acceptEventInterval {
    
    objc_setAssociatedObject(self, UIControl_acceptEventInterval, @(LY_acceptEventInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

- (BOOL)LY_ignoreEvent {
    
    return [objc_getAssociatedObject(self, UIcontrol_ignoreEvent) boolValue];
    
}

- (void)setLY_ignoreEvent:(BOOL)LY_ignoreEvent {
    
    objc_setAssociatedObject(self, UIcontrol_ignoreEvent, @(LY_ignoreEvent), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}

+ (void)load {
    
    Method a = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    
    Method b = class_getInstanceMethod(self, @selector(__LY_sendAction:to:forEvent:));
    
    method_exchangeImplementations(a, b);
    
}

- (void)__LY_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    
    if (self.LY_ignoreEvent) return;
    
    if (self.LY_acceptEventInterval > 0) {
        
        self.LY_ignoreEvent = YES;
        
        [self performSelector:@selector(setLY_ignoreEvent:) withObject:@(NO) afterDelay:self.LY_acceptEventInterval];
        
    }
    
    [self __LY_sendAction:action to:target forEvent:event];
    
}


@end
