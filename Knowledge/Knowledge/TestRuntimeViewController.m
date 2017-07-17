//
//  TestRuntimeViewController.m
//  Knowledge
//
//  Created by lh on 2017/7/17.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "TestRuntimeViewController.h"
#import "UIImage+Image.h"
#import "Student+Property.h"

@interface TestRuntimeViewController ()

@end

@implementation TestRuntimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 200)/2, 0, 200, 200)];
    imageV.image = [UIImage imageNamed:@"lihuan"];
    [self.view addSubview:imageV];
    
    Student *student = [[Student alloc]init];
    student.name = @"lihuan";
    student.age  = @"18";
    NSLog(@"通过categroy动态添加属性%@---%@",student.age,student.name);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
