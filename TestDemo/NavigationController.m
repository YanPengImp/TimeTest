//
//  NavigationController.m
//  TestDemo
//
//  Created by Imp on 16/7/22.
//  Copyright © 2016年 codoon. All rights reserved.
//

#import "NavigationController.h"
#import "TimeObject.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers && self.viewControllers.count) {
        [TimeObject shared].start = CFAbsoluteTimeGetCurrent();
    }
    [super pushViewController:viewController animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
