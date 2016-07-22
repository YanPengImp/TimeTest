//
//  TimeObject.h
//  PerformanceMonitor
//
//  Created by Imp on 16/7/16.
//  Copyright © 2016年 Tencent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

@interface TimeObject : NSObject

//点击屏幕的时间
@property (nonatomic, assign) CFAbsoluteTime touch;
//push开始的时间
@property (nonatomic, assign) CFAbsoluteTime start;
//新视图出现的时间
@property (nonatomic, assign) CFAbsoluteTime end;
//目标视图控制器
@property (nonatomic, strong) UIViewController *controller;

+ (instancetype)shared;
- (void)printTime;

@end

