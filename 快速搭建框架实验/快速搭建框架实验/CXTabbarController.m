//
//  CXTabbarController.m
//  快速搭建框架实验
//
//  Created by 陈曦 on 16/3/31.
//  Copyright © 2016年 chenxi. All rights reserved.
//

#import "CXTabbarController.h"

@interface CXTabbarController ()

@end

@implementation CXTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // UIControlStateNormal情况下的文字属性
    NSMutableDictionary *normalAtrrs = [NSMutableDictionary dictionary];
    
    //文字颜色
    normalAtrrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    // UIControlStateSelected情况的文字属性
    NSMutableDictionary *selectedAtrrs = [NSMutableDictionary dictionary];
    
    //文字颜色
    selectedAtrrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:normalAtrrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtrrs forState:UIControlStateReserved];
    
    //添加四个子控制器
    UIViewController *vc1 = [[UIViewController alloc]init];
    vc1.tabBarItem.title = @"精选";
    vc1.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc1.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    vc1.view.backgroundColor = [UIColor greenColor];
    [self addChildViewController:vc1];
    
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.tabBarItem.title = @"新帖";
    vc2.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    vc2.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    vc2.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc2];
    
    UIViewController *vc3 = [[UIViewController alloc]init];
    vc3.tabBarItem.title = @"关注";
    vc3.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc3.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    vc3.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc3];
    
    UIViewController *vc4 = [[UIViewController alloc]init];
    vc4.tabBarItem.title = @"我的";
    vc4.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc4.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    vc4.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:vc4];
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
