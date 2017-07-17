//
//  Student+Property.h
//  Knowledge
//
//  Created by lh on 2017/7/17.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "Student.h"

@interface Student (Property)
//只会生成get，set方法声明,不会生成实现，也不会生成下划线成员属性
@property NSString *name;
@property NSString *age;
@end
