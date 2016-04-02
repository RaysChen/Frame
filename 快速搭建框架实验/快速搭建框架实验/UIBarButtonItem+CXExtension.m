//
//  UIBarButtonItem+CXExtension.m
//  快速搭建框架实验
//
//  Created by 陈曦 on 16/4/2.
//  Copyright © 2016年 chenxi. All rights reserved.
//


#import "UIBarButtonItem+CXExtension.h"

@implementation UIBarButtonItem (CXExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
        [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
        [button sizeToFit];
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
        
        return [[self alloc] initWithCustomView:button];
    }
}

@end
