//
//  NPAppDelegate.h
//  ImageFilterSample
//
//  Created by Nebojsa Petrovic on 4/25/13.
//  Copyright (c) 2013 Nebojsa Petrovic. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NPViewController;

@interface NPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NPViewController *viewController;

@end
