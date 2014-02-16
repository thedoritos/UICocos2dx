//
//  AppDelegate.m
//  UICocos2dx
//
//  Created by thedoritos on 2014/02/16.
//
//

#import "AppDelegate.h"
#import "HelloRootViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *rootVC = [[HelloRootViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    self.window.rootViewController = navi;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
