//
//  AppDelegate.m
//  UITabBarContorller
//
//  Created by Orient on 16/5/23.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //1.创建windoew
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    //a.初始化一个tabBar控制器
    UITabBarController *tb = [[UITabBarController alloc] init];
    //设置控制器为window的根控制器
    self.window.rootViewController = tb;
    
    //b.创建子控制器
    UIViewController *c1 = [[UIViewController alloc] init];
    c1.view.backgroundColor = [UIColor greenColor];
    c1.tabBarItem.title = @"消息";
    //c1.tabBarItem.image = [UIImage imageNamed:@""];
    c1.tabBarItem.badgeValue = @"123";
    
    UIViewController *c2 = [[UIViewController alloc] init];
    c2.view.backgroundColor = [UIColor brownColor];
    c2.tabBarItem.title = @"联系人";
    
    UIViewController *c3 = [[UIViewController alloc] init];
    //c3.view.backgroundColor = [
    c3.tabBarItem.title = @"动态";
    
    //添加子控制器到tabbarcontroller
    //第一种
    //[tb addChildViewController:c1];
    //[tb addChildViewController:c2];
    //[tb addChildViewController:c3];
    
    //第二种方式
    tb.viewControllers = @[c1, c2, c3];
    
    //设置window为主窗口并显示；
    [self.window makeKeyAndVisible];

    
    
    
    return YES;
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
