//
//  CYTabbarViewController.m
//  驾考刷题
//
//  Created by 程俊亚 on 15/12/6.
//  Copyright © 2015年 john. All rights reserved.
//

#import "TLTabbarViewController.h"
#import "TLMessageController.h"
#import "TLAdreeBookController.h"
#import "TLPersonCenterController.h"
#import "TLTuLeController.h"
#import "TLNavigationViewController.h"

@interface TLTabbarViewController ()

@end

@implementation TLTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //1.初始化子控制器
    TLTuLeController *firstSubject = [[TLTuLeController alloc]init];

    [self addChildVc:firstSubject title:@"科目一" image:@"navigation_ bar1a" selectedImage:@"navigation_ bar1b"];

    TLMessageController *secondSubject = [[TLMessageController alloc]init];

    [self addChildVc:secondSubject title:@"科目二" image:@"navigation_ bar2a" selectedImage:@"navigation_ bar2b"];

    TLAdreeBookController *thirdSubject = [[TLAdreeBookController alloc]init];

    [self addChildVc:thirdSubject title:@"科目三" image:@"navigation_ bar3a" selectedImage:@"navigation_ bar3b"];

    TLPersonCenterController *forthSubject = [[TLPersonCenterController alloc]init];
    forthSubject.view.backgroundColor = TLRandomColor;
    [self addChildVc:forthSubject title:@"科目四" image:@"navigation_ bar4a" selectedImage:@"navigation_ bar4b"];
}


- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    //设置控制器的文字
    childVc.title = title;//设置tabbar的文字

    //设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    //设置文字样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = TLColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];

    //先给外面传进来的小控制器 包装一个导航控制器
    TLNavigationViewController *nav = [[TLNavigationViewController alloc]initWithRootViewController:childVc];

    //添加为子控制器
    [self addChildViewController:nav];

}

@end
