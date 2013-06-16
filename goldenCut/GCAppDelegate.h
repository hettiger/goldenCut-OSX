//
//  GCAppDelegate.h
//  goldenCut
//
//  Created by Martin Hettiger on 15.06.13.
//  Copyright (c) 2013 Martin Hettiger. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GCAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *totalLength;
@property (assign) IBOutlet NSTextField *majorLength;
@property (assign) IBOutlet NSTextField *minorLength;

@end