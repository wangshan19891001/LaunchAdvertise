//
//  AppDelegate.m
//  LaunchAdvertise
//
//  Created by 王陕 on 16/5/16.
//  Copyright © 2016年 王陕. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) UIView *launchAdv;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewController *VC = [[ViewController alloc] init];
    self.window.rootViewController = VC;
    [self.window makeKeyAndVisible];
    
    
    
    // 加载app启动广告视图
    
    UIImage *image = [UIImage imageNamed:@"haini.jpg"];
    
    if (image) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 320, 300)];
        imageView.image = image;
        [self.launchAdv addSubview:imageView];
        
        [self.window addSubview:self.launchAdv];
        [self.window bringSubviewToFront:self.launchAdv];
        NSLog(@"%@", self.launchAdv);
        UIView *view = [self.window.subviews objectAtIndex:0];
        NSLog(@"%@", view);
        [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(launchAction) userInfo:nil repeats:NO];
    }
    
    
    
    
    
    // Override point for customization after application launch.
    return YES;
}

- (UIView *)launchAdv {

    if (!_launchAdv) {
        _launchAdv = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    return _launchAdv;
}

- (void)launchAction {
    [self.launchAdv removeFromSuperview];
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
