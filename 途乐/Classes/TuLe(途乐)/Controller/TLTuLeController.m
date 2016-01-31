//
//  TLTuLeController.m
//  途乐
//
//  Created by 程俊亚 on 16/1/31.
//  Copyright © 2016年 Tule. All rights reserved.
//

#import "TLTuLeController.h"
#import "UIViewController+MMDrawerController.h"
#import "MMDrawerBarButtonItem.h"
#import "TLLeftDrawerController.h"
@interface TLTuLeController ()

@end

@implementation TLTuLeController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置左边抽屉
    [self setupLeftMenuButton];
}

#pragma mark - 设置左抽屉
- (void)setupLeftMenuButton
{
    //创建按钮
    MMDrawerBarButtonItem *leftDrawerButton = [[MMDrawerBarButtonItem alloc]initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    //为navigationItem添加LeftBarButtonItem
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];

}

- (void)leftDrawerButtonPress:(id)sender
{
    //开关左抽屉
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    
}

@end
