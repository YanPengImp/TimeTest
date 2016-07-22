//
//  ViewController1.m
//  TestDemo
//
//  Created by Imp on 16/7/22.
//  Copyright © 2016年 codoon. All rights reserved.
//

#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewController1 ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i =0; i < 1000000000; i++) {
        int a = i;
    }
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(0, 0, 100, 40);
    [_button setTitle:@"点击" forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    _button.center = self.view.center;
    [self.view addSubview:_button];
    // Do any additional setup after loading the view.
}

- (void)click {
    ViewController2 *vc = [[ViewController2 alloc] init];
    vc.view.backgroundColor = [UIColor greenColor];
    [self.navigationController pushViewController:vc animated:YES];
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
