//
//  UIWindow+Touch.m
//  TestDemo
//
//  Created by Imp on 16/7/22.
//  Copyright © 2016年 codoon. All rights reserved.
//

#import "UIWindow+Touch.h"
#import "TimeObject.h"

@implementation UIWindow (Touch)

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    [TimeObject shared].touch = CFAbsoluteTimeGetCurrent();
    return [super hitTest:point withEvent:event];
}

@end
