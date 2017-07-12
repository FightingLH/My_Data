//
//  ViewController.m
//  Knowledge
//
//  Created by lh on 2017/6/13.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
const NSString *testKey = @"testKey";

@interface ViewController ()
{
    NSString *_hello;
}
@end

@implementation ViewController


- (void)setHello:(NSString *)hello
{
    _hello = hello;
}

- (NSString *)hello
{
    return _hello;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *testArray = [NSArray arrayWithObjects:@"1",@"2",@"3",nil];
    objc_setAssociatedObject(testArray, &testKey,@[@"lihuan",@"lihuan"], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSLog(@"%@",objc_getAssociatedObject(testArray, &testKey));
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
