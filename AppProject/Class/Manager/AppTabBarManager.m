//
//  AppTabBarManager.m
//  Project_iOS
//
//  Created by 刘旭 on 15/12/14.
//  Copyright (c) 2015年 刘旭. All rights reserved.
//

#import "AppTabBarManager.h"
//#import "AppNavigationController.h"
//#import "ZSCHomeViewController.h"
//#import "ZSCConsultListViewController.h"
//#import "ZSCPlanViewController.h"
//#import "ZSCMineViewController.h"
//
@implementation AppTabBarManager
//
//+ (AppTabBarManager *)shareManager{
//    static AppTabBarManager *shareManager;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        shareManager = [[AppTabBarManager alloc]init];
//    });
//    return shareManager;
//}
//
//- (AppTabBarViewController *)tabbarViewController{
//    if (!_tabbarViewController) {
//        _tabbarViewController = [[AppTabBarViewController alloc]init];
////        [_tabbarViewController.tabBar setBackgroundImage:[UIImage imageWithColor:UIColorFromRGB(0xf5f5f5)]];
//        _tabbarViewController.tabBar.tintColor = kAppCommonColor;
//        NSMutableArray *items = @[].mutableCopy;
//        AppTabbarItem *item = nil;
//        
//        NSMutableArray *viewControllers = [NSMutableArray array];
//        ZSCHomeViewController *home = [[ZSCHomeViewController alloc]init];
//        item = [AppTabbarItem new];
//        [items addObject:item];
//        item.image = [[UIImage imageForKey:@"home"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        item.selectedImage = [UIImage imageForKey:@"home_p"];
//        item.tag = 1;
//        item.title = @"首页";
//        AppNavigationController *homeNavi = [[AppNavigationController alloc]initWithRootViewController:home];
//        homeNavi.tabBarItem = item;
//        [homeNavi.view setBackgroundColor:[UIColor whiteColor]];
//        [viewControllers addObject:homeNavi];
//        
//        ZSCConsultListViewController *consult = [[ZSCConsultListViewController alloc]init];
//        item = [AppTabbarItem new];
//        [items addObject:item];
//        item.image = [[UIImage imageForKey:@"comment"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        item.selectedImage = [UIImage imageForKey:@"comment_p"];
//        item.title = @"咨询";
//        AppNavigationController *consultNavi = [[AppNavigationController alloc]initWithRootViewController:consult];
//        consultNavi.tabBarItem = item;
//        [viewControllers addObject:consultNavi];
//        
//        ZSCPlanViewController *plan = [[ZSCPlanViewController alloc]init];
//        item = [AppTabbarItem new];
//        [items addObject:item];
//        item.image = [[UIImage imageForKey:@"list"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        item.selectedImage = [UIImage imageForKey:@"list_p"];
//        item.title = @"调理方案";
//        AppNavigationController *planNavi = [[AppNavigationController alloc]initWithRootViewController:plan];
//        planNavi.tabBarItem = item;
//        [viewControllers addObject:planNavi];
//        
//        ZSCMineViewController *mine = [[ZSCMineViewController alloc]init];
//        item = [AppTabbarItem new];
//        [items addObject:item];
//        item.image = [[UIImage imageForKey:@"mine"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//        item.selectedImage = [UIImage imageForKey:@"mine_p"];
//        item.title = @"我的";
//        AppNavigationController *mineNavi = [[AppNavigationController alloc]initWithRootViewController:mine];
//        mineNavi.tabBarItem = item;
//        [viewControllers addObject:mineNavi];
//
//        
//        _tabbarViewController.viewControllers = viewControllers;
//        [_tabbarViewController initCustomItems];
//    }
//    return _tabbarViewController;
//}

@end
