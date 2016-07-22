//
//  TimeObject.m
//  PerformanceMonitor
//
//  Created by Imp on 16/7/16.
//  Copyright © 2016年 Tencent. All rights reserved.
//

#import "TimeObject.h"
#import <UIKit/UIKit.h>

@implementation TimeObject

+ (instancetype)shared {
    static TimeObject *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super alloc] init];
    });
    return instance;
}

- (void)printTime {
    //判断针对于push出来的页面 可以去掉
    if (self.start && self.end && self.touch) {
        CFAbsoluteTime offsetTime = self.end - self.touch;
        NSLog(@"use time = %f",offsetTime);
        if (offsetTime > 0.1) {
            //如果时间大于100ms 影响用户体验
            NSLog(@"%@",self.controller.class);
        }
    }
    self.end = 0;
    self.start = 0;
    self.touch = 0;
    self.controller = nil;
}

@end
