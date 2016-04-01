//
//  CXTabBar.m
//  快速搭建框架实验
//
//  Created by 陈曦 on 16/4/1.
//  Copyright © 2016年 chenxi. All rights reserved.
//

#import "CXTabBar.h"

@interface CXTabBar ()

/*增加发布按钮*/
@property (nonatomic,weak) UIButton *publishButton;

@end


@implementation CXTabBar

-(instancetype)initWithFrame:(CGRect)frame{


    if (self = [super initWithFrame:frame]) {
        //设置背景图片
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
        
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        [publishButton sizeToFit];
        
        //监听发布按钮点击
        [publishButton addTarget:self action:@selector(publishClick)forControlEvents:UIControlEventTouchUpOutside];
        [self addSubview:publishButton];
        self.publishButton = publishButton;
        
        
    }
     return self;
}



-(void)publishClick
{
    NSLog(@"%s",__func__);

}



/*重写layoutSubviews方法，布局子控件*/

-(void)layoutSubviews{

    [super layoutSubviews];
    
    //TabBar的尺寸
    CGFloat width = self.frame.size.width;
    CGFloat height = self.frame.size.height;
    //设置发布按钮的位置
    self.publishButton.center = CGPointMake(width * 0.5, height *0.5);
    
    //设置索引
    int index = 0;
    
    //按钮尺寸
    CGFloat tabBarButtonW = self.frame.size.width / 5;
    CGFloat tabBarButtonH = self.frame.size.height;
    CGFloat tabBarButtonY = 0;
    
    //设置四个tabBarButton的frame
    for (UIView *tabBarButton in self.subviews) {
        if (![NSStringFromClass(tabBarButton.class) isEqualToString:@"UITabBarButton"])continue;
        
        //计算按钮x的值
        CGFloat tabBarButtonX = index * tabBarButtonW;
        
        
        if (index >=2) {
            tabBarButtonX += tabBarButtonW;//给后面两个button增加x宽度的值
        }
        
        tabBarButton.frame = CGRectMake(tabBarButtonX, tabBarButtonY, tabBarButtonW, tabBarButtonH);
        index++;
        
   }
    


}


@end
