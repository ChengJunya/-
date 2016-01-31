//
//  AppDelegate.m
//  途乐
//
//  Created by 程俊亚 on 16/1/31.
//  Copyright © 2016年 Tule. All rights reserved.
//

#import "AppDelegate.h"
#import "TLNavigationViewController.h"
#import "TLLeftDrawerController.h"
#import "TLTabbarViewController.h"
#import "MMDrawerController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //1.创建窗口
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];

    //2.设置根控制器
    //初始化左视图
    TLLeftDrawerController *leftTVC = [[TLLeftDrawerController alloc]init];
    TLTabbarViewController *tabarVc = [[TLTabbarViewController alloc] init];
    //初始化抽屉视图控制器
    MMDrawerController *drawerController = [[MMDrawerController alloc]initWithCenterViewController:tabarVc leftDrawerViewController:leftTVC];

    //设置抽屉抽出的宽度
    drawerController.maximumLeftDrawerWidth = tlScreenWidth - 80;
    //滑动手势开关抽屉
    [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];

    self.window.rootViewController = drawerController;

//    [UMSocialData setAppKey:@"567d16a9e0f55abc680025de"];

    //    _mapManager = [[BMKMapManager alloc] init];
    //    BOOL ret = [_mapManager start:@"zuYmTc5e9gO0KWGzTngqUY4x" generalDelegate:nil];
    //
    //    if (!ret) {
    //        NSLog(@"manager start failed!");
    //    }

    //3.显示窗口
    [self.window makeKeyAndVisible];
    return YES;
}



@end
