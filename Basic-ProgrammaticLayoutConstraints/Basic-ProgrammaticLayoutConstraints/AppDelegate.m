//
//  AppDelegate.m
//  Basic-ProgrammaticLayoutConstraints
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Initializes the application window.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    // Sets the root view controller of the
    // app to our own UIViewController subclass
    ViewController *viewController = [[ViewController alloc] init];
    [self.window setRootViewController:viewController];
    
    return YES;
}

@end
