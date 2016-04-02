//
//  UIBarButtonItem+CXExtension.h
//  快速搭建框架实验
//
//  Created by 陈曦 on 16/4/2.
//  Copyright © 2016年 chenxi. All rights reserved.
//
//封装一个BarButtonItem类别，第二种方法：新建一个扩展类

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CXExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
