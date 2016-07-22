//
//  CDViewController.m
//  TestDemo
//
//  Created by Imp on 16/7/22.
//  Copyright © 2016年 codoon. All rights reserved.
//

#import "CDViewController.h"
#import "TimeObject.h"

@interface CDViewController ()

@end

@implementation CDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        if (self.navigationController.topViewController == self) {
            [TimeObject shared].end = CFAbsoluteTimeGetCurrent();
            [TimeObject shared].controller = self;
            [[TimeObject shared] printTime];
        }
    }
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
