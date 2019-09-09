//
//  AppDelegate.m
//  weibo
//
//  Created by Kluth on 2019/9/6.
//  Copyright © 2019 Kluth. All rights reserved.
//

#import "AppDelegate.h"

#import "MJSAdViewController.h"
/*
 优先级:LaunchScreen > LaunchImage
 */
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	
	//NSLog(@"%@",NSStringFromCGRect([UIScreen mainScreen].bounds));
	//1.创建窗口
	self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
	//2.设置窗口根控制器
	MJSAdViewController *adVc = [[MJSAdViewController alloc] init];
	// initWithNibName
	self.window.rootViewController = adVc;
	
	
	[self.window makeKeyAndVisible];
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {

}


- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
