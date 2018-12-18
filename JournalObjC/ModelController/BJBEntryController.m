//
//  BJBEntryController.m
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import "BJBEntryController.h"

@implementation BJBEntryController

+ (BJBEntryController *)shared{
    static BJBEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[BJBEntryController alloc] init];
    });
    return shared;
}


- (void)addEntry:(BJBEntry *)entry
{
    [self.entries addObject:entry];
}

- (void)removeEntry:(BJBEntry *)entry
{
    [self.entries removeObject:entry];
}

- (void)modifyEntry:(BJBEntry *)entry withTitle:(NSString *)title body:(NSString *)body
{
    title = [entry title];
    body = [entry bodyText];
}

@end
