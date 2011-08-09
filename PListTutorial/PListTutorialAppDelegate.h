//
//  PListTutorialAppDelegate.h
//  PListTutorial
//
//  Created by Wa-jiw Casey on 8/9/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PListTutorialViewController;

@interface PListTutorialAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PListTutorialViewController *viewController;

@end
