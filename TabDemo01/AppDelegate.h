//
//  AppDelegate.h
//  TabDemo01
//
//  Created by 董琳 on 15/7/7.
//  Copyright (c) 2015年 董琳. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabDemoViewController;

@interface TabDemoViewController: UIViewController {
    UITextView *textView;
    
    // 页码
    int page;
}

- (id) initWithPageNumber:(int)pageNumber;
@end

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow *window;
    
    UITabBarController * tabBarController;
    NSMutableArray *viewControllers;
}

@property (strong, nonatomic) UIWindow *window;


@end

