//
//  UIImage+Image.m
//  Knowledge
//
//  Created by lh on 2017/7/17.
//  Copyright © 2017年 lh. All rights reserved.
//

#import "UIImage+Image.h"
#import <objc/message.h>
@implementation UIImage (Image)
//把类加载到内存的时候调用,只会被调用一次
+ (void)load
{
    Method imageNameMethod = class_getClassMethod(self, @selector(imageNamed:));
    Method ln_imageNamedMethod = class_getClassMethod(self, @selector(ln_imageNamed:));
    method_exchangeImplementations(imageNameMethod, ln_imageNamedMethod);
}

+ (UIImage *)ln_imageNamed:(NSString *)name {
    
    UIImage *image = [UIImage ln_imageNamed:name];
    if (image) {
        NSLog(@"runtime添加额外功能--加载成功");
    } else {
        NSLog(@"runtime添加额外功能--加载失败");
    }
    return image;
}

@end
