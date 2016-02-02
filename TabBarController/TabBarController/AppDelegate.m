//
//  AppDelegate.m
//  TabBarController
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, readonly) UITabBarController *tabBarController;

@end

@implementation AppDelegate {
    UITabBarController *_tabBarController;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    [self.window setRootViewController:self.tabBarController];
    
    return YES;
}

- (UITabBarController *)tabBarController
{
    if (!_tabBarController) {
        _tabBarController = [[UITabBarController alloc] init];
        [_tabBarController setViewControllers:[self setUpViewControllers]];
    }
    
    return _tabBarController;
}

- (NSArray *)setUpViewControllers;
{
    NSMutableArray *viewControllers = [[NSMutableArray alloc] init];
    NSArray *backgroundColors = @[UIColor.redColor, UIColor.greenColor, UIColor.blueColor, UIColor.yellowColor];
    
    [backgroundColors enumerateObjectsUsingBlock:^(UIColor *color, NSUInteger idx, BOOL *stop) {
        UIViewController *viewController = [UIViewController new];
        viewController.view.backgroundColor = color;
        
        // The title of the view controller is, by default, displayed on its tab.
        // That behavior can be overriden/customized.
        viewController.title = [NSString stringWithFormat:@"%d", idx];
        
        viewControllers[idx] = viewController;
    }];
    
    return viewControllers;
}

@end
