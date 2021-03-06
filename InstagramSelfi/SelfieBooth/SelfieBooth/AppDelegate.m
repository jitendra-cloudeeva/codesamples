//
//  AppDelegate.m
//  SelfieBooth
//
//  Created by Jitendra Rajoria on 01/23/15.
//  Copyright (c) 2015 Jitendra Rajoria. All rights reserved.
//

#import "AppDelegate.h"
#import <SimpleAuth/SimpleAuth.h>
#import "SelfieCollectionViewController.h"

#define kClientID @"2893e6e0cb97452583f336fa369a7faa"
#define kURIKey @"selfiebooth://auth/instagram"
#define PNBlue [UIColor colorWithRed:67.0 / 255.0 green:104.0 / 255.0 blue:208.0 / 255.0 alpha:1.0f]

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Get client ID from Instagram client - http://instagram.com/developer/clients/manage/
    
    SimpleAuth.configuration[@"instagram"] = @{@"client_id" : kClientID,
                                   SimpleAuthRedirectURIKey : kURIKey};
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    SelfieCollectionViewController *svc = [SelfieCollectionViewController new];
    
    UINavigationController *navigationVC = [[UINavigationController alloc] initWithRootViewController:svc];
    self.window.rootViewController = navigationVC;
    
    UINavigationBar *navigationBar = navigationVC.navigationBar;
    navigationBar.barTintColor = PNBlue;
    navigationBar.barStyle = UIBarStyleBlackOpaque;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
