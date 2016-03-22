//
//  AppDelegate.m
//  ZeJu6
//
//  Created by ZeJu on 16/3/22.
//  Copyright © 2016年 ZeJu. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "MainTabBarViewController.h"
#import "MandyFactory.h"
#import "BasicViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [MandyFactory createWindow];
    
    self.window.rootViewController = [self createTabBarController];
    
    [self.window makeKeyAndVisible];
    
    //    [UIApplication sharedApplication].statusBarStyle = [self preferredStatusBarStyle];
    
    return YES;
}
- (MainTabBarViewController *)createTabBarController{
    
    NSArray * titleArray = @[@"客户",@"楼盘",@"动态",@"我的"];
    
    NSArray * normalImageArray = @[@"btn_column_normal",@"btn_live_normal",@"btn_home_normal",@"btn_user_normal"];
    NSArray * selectedImageArray = @[@"btn_column_selected",@"btn_live_selected",@"btn_home_selected",@"btn_user_selected"];
    NSArray * controllersArray = @[@"ConsumerMainViewController",@"BuildingsMainViewController",@"DynamicMainViewController",@"MineMainViewController"];
    
    NSMutableArray * arr = [NSMutableArray array];
    
    for (int i =  0 ; i< controllersArray.count; i ++) {
        
        UIViewController * vc = [MandyFactory createViewControllerWithName:controllersArray[i] andColor:i + 4];
        
        UINavigationController * nav  = [[UINavigationController alloc]initWithRootViewController:vc];
        
        //        nav.navigationBar.barStyle =
        nav.navigationBar.translucent = NO;
        
        nav.navigationBar.barTintColor = [UIColor orangeColor];
        
        nav.tabBarItem = [[UITabBarItem alloc]initWithTitle:titleArray[i] image:[UIImage imageNamed: normalImageArray[i]] selectedImage:[UIImage imageNamed:selectedImageArray[i]]];
        
        [arr addObject:nav];
        
    }
    
    
    MainTabBarViewController * tabBar = [[MainTabBarViewController alloc]init];
    
    tabBar.viewControllers = [arr copy];
    
    return tabBar;
    
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
