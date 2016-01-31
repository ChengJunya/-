//
//  PrefixHeader.h
//  途乐
//
//  Created by 程俊亚 on 16/1/31.
//  Copyright © 2016年 Tule. All rights reserved.
//

#ifndef PrefixHeader_h
#define PrefixHeader_h
#import<UIKit/UIKit.h>
#import "UIView+Extension.h"
#import "UIBarButtonItem+Extension.h"

#endif /* PrefixHeader_pch */

#ifdef __OBJC__

#ifdef DEBUG // 处于开发阶段
#define TLLog(...) NSLog(__VA_ARGS__)
#else // 处于发布阶段
#define TLLog(...)
#endif


/** 获取屏幕高宽 **/
#define tlScreenHeight [UIScreen mainScreen].bounds.size.height
#define tlScreenWidth [UIScreen mainScreen].bounds.size.width

// RGB颜色
#define TLColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 随机色
#define TLRandomColor TLColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
#endif
