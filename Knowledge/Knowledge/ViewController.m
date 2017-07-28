//
//  ViewController.m
//  Knowledge
//
//  Created by lh on 2017/6/13.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Class c = [NSObject class];
    IMP greetintImp = imp_implementationWithBlock((NSString *)^(id self,NSString *name)
        {
            return [NSString stringWithFormat:@"hello,%@",name];
        });
    const char *greetingTypes = [[NSString stringWithFormat:@"%s%s%s",@encode(id),@encode(id),@encode(SEL)]UTF8String];
    class_addMethod(c, @selector(greetingWithName), greetintImp, greetingTypes);
}

- (void)greetingWithName
{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
