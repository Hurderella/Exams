//
//  AppDelegate.m
//  Exam_KVO
//
//  Created by Hurderella on 2016. 2. 13..
//  Copyright © 2016년 Hurderella. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (assign) IBOutlet ExamController* examCont;
@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
