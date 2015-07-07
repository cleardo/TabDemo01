//
//  AppDelegate.m
//  TabDemo01
//
//  Created by 董琳 on 15/7/7.
//  Copyright (c) 2015年 董琳. All rights reserved.
//

#import "AppDelegate.h"

@implementation TabDemoViewController

- (id) initWithPageNumber: (int)pageNumber {
    self = [super init];
    
    if (self != nil) {
        page = pageNumber;
        self.title = [NSString stringWithFormat:@"page %d", page];
        self.tabBarItem = [[UITabBarItem alloc] initWithTitle: [NSString stringWithFormat:@"page %d", page]
                                                        image:nil
                                                          tag:page];
    }
    
    return self;
}
- (void) loadView {
    [super loadView];
    
    CGRect bounds = [ [UIScreen mainScreen] applicationFrame];
    
    UIView *contentView  = [[UIView alloc] initWithFrame: bounds];
    
    textView = [ [ UITextView alloc] initWithFrame: CGRectMake(0.0, 150.0, bounds.size.width - 100.0, bounds.size.height)];
    
    textView.text = [ [ NSString alloc] initWithFormat: @"text paget %d", page];
    
    textView.textColor = [UIColor redColor];
    
    textView.editable = NO;
    
    // textView.frame = CGRectMake(1000.0, 150.0, 0, 0);
    
    // [view addSubview:textView];
    
    self.view = contentView;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview: textView];
    
}

- (void) dealloc {
    
}

@end
@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect screenBounds = [[ UIScreen mainScreen] bounds];
    
    self.window = [[ UIWindow alloc] initWithFrame: screenBounds];
    
    viewControllers = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 5; i++) {
        NSLog(@"%d", i);
        [viewControllers addObject: [[TabDemoViewController alloc] initWithPageNumber: i]];
        
    }
    
    
    tabBarController = [[UITabBarController alloc] init];
    
    tabBarController.viewControllers = viewControllers;
    
    [window addSubview:tabBarController.view];
    
    [window makeKeyAndVisible];
    
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
