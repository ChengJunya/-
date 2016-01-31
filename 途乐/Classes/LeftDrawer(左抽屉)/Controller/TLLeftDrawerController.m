//
//  TLLeftDrawerController.m
//  途乐
//
//  Created by 程俊亚 on 16/1/31.
//  Copyright © 2016年 Tule. All rights reserved.
//

#import "TLLeftDrawerController.h"

@interface TLLeftDrawerController ()

@end

@implementation TLLeftDrawerController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.view.alpha = 0.1;
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    backgroundImageView.image = [UIImage imageNamed:@"left_bg.png"];
    [self.view addSubview:backgroundImageView];
    backgroundImageView.alpha = 0.3;
}

@end
