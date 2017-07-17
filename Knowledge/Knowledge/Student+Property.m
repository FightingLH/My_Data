//
//  Student+Property.m
//  Knowledge
//
//  Created by lh on 2017/7/17.
//  Copyright © 2017年 lh. All rights reserved.
//
//给student添加分类属性
#import "Student+Property.h"
#import <objc/runtime.h>
@implementation Student (Property)

- (void)setName:(NSString *)name
{
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)name
{
    return objc_getAssociatedObject(self, @"name");
}

- (void)setAge:(NSString *)age
{
   objc_setAssociatedObject(self, @"age", age, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)age
{
    return objc_getAssociatedObject(self, @"age");
}

@end
