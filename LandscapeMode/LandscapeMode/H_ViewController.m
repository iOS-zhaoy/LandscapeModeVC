//
//  H_ViewController.m
//  某个页面可以横屏
//
//  Created by 赵岩 on 2016/10/12.
//  Copyright © 2016年 赵岩. All rights reserved.
//

#import "H_ViewController.h"
#import "AppDelegate.h"

@interface H_ViewController ()

@end

@implementation H_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.isFullScreen = YES;
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    AppDelegate *appDelegate =(AppDelegate*) [[UIApplication sharedApplication] delegate];
    appDelegate.isFullScreen = NO;
}

-(void)back
{
    [ self dismissViewControllerAnimated: YES completion: nil ];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
