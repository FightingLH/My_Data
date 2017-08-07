//
//  NSTestValueTransformer.m
//  Knowledge
//
//  Created by lh on 2017/8/4.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "NSTestValueTransformer.h"

@implementation NSTestValueTransformer
+ (Class)transformedValueClass
{
    return [NSString class];
}

+ (BOOL)allowsReverseTransformation
{
    return NO;
}

- (id)transformedValue:(id)value
{
    return (value == nil)?nil:NSStringFromClass([value class]);
}
@end
