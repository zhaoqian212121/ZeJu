//
//  MandyFactory.h
//  ZeJuApp
//
//  Created by ZeJu on 16/3/22.
//  Copyright © 2016年 ZeJu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import<UIKit/UIKit.h>

//颜色枚举
typedef enum{
    
    
    blackColor,
    darkGrayColor,
    lightGrayColor,
    whiteColor,
    grayColor,
    redColor,
    greenColor,
    blueColor,
    cyanColor,
    yellowColor,
    magentaColor,
    orangeColor,
    purpleColor,
    brownColor,
    clearColor
    
    
} MyColor;


@interface MandyFactory : NSObject
//根据控制器名字创建视图控制器
+ (UIViewController *)createViewControllerWithName:(NSString *)name;

//根据控制器名字和颜色创建视图控制器
+ (UIViewController *)createViewControllerWithName:(NSString *)name andColor:(MyColor)color;

//创建窗口
+ (UIWindow *)createWindow;

@end
