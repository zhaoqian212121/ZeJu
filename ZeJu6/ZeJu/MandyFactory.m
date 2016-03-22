//
//  MandyFactory.m
//  ZeJuApp
//
//  Created by ZeJu on 16/3/22.
//  Copyright © 2016年 ZeJu. All rights reserved.
//

#import "MandyFactory.h"

@implementation MandyFactory
//根据控制器名字创建视图控制器
+ (UIViewController *)createViewControllerWithName:(NSString *)name{
    
    Class cls = NSClassFromString(name);
    
    return [[cls alloc]init];
    
}

//根据控制器名字和颜色创建视图控制器
+ (UIViewController *)createViewControllerWithName:(NSString *)name andColor:(MyColor)color{
    
    Class cls = NSClassFromString(name);
    
    UIViewController * vc = [[cls alloc]init];
    
    NSArray * colorArray = @[[UIColor blackColor],
                             [UIColor darkGrayColor],
                             [UIColor lightGrayColor],
                             [UIColor whiteColor],
                             [UIColor grayColor],
                             [UIColor redColor],
                             [UIColor greenColor],
                             [UIColor blueColor],
                             [UIColor cyanColor],
                             [UIColor yellowColor],
                             [UIColor magentaColor],
                             [UIColor orangeColor],
                             [UIColor purpleColor],
                             [UIColor brownColor],
                             [UIColor clearColor]
                             ];
    
    vc.view.backgroundColor = colorArray[color];
    
    return vc;
    
    
}

//创建窗口
+ (UIWindow *)createWindow{
    
    static UIWindow * window = nil;
    
    if (!window) {
        
        window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
        
    }
    
    window.backgroundColor = [UIColor whiteColor];
    
    return window;
    
}
@end
