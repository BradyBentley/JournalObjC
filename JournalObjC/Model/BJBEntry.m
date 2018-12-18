//
//  BJBEntry.m
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import "BJBEntry.h"

@implementation BJBEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [[NSDate alloc] init];
    }
    return self;
}

@end
