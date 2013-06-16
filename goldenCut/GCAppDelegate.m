//
//  GCAppDelegate.m
//  goldenCut
//
//  Created by Martin Hettiger on 15.06.13.
//  Copyright (c) 2013 Martin Hettiger. All rights reserved.
//

#import "GCAppDelegate.h"

@implementation GCAppDelegate
@synthesize totalLength;
@synthesize majorLength;
@synthesize minorLength;

float phi(void)
{
    float phi = (1 + sqrt(5)) / 2;
    return phi;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [totalLength setAction:@selector(calculateWithTotalLength)];
    [majorLength setAction:@selector(calculateWithMajorLength)];
    [minorLength setAction:@selector(calculateWithMinorLength)];
}

- (void)calculateWithTotalLength
{
    [majorLength setFloatValue:[totalLength floatValue] / phi()];
    [minorLength setFloatValue:[totalLength floatValue] - [majorLength floatValue]];
}

- (void)calculateWithMajorLength
{
    [minorLength setFloatValue:[majorLength floatValue] / phi()];
    [totalLength setFloatValue:[majorLength floatValue] + [minorLength floatValue]];
}

- (void)calculateWithMinorLength
{
    [majorLength setFloatValue:[minorLength floatValue] * phi()];
    [totalLength setFloatValue:[majorLength floatValue] + [minorLength floatValue]];
}

@end
