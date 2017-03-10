//
//  ViewController.m
//  LandscapeMode
//
//  Created by 赵岩 on 2017/3/10.
//  Copyright © 2017年 赵岩. All rights reserved.
//

#import "ViewController.h"
#import "H_ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"go" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(goTo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)goTo
{
    H_ViewController *HVC = [[H_ViewController alloc]init];
    [self presentViewController:HVC animated:NO completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
