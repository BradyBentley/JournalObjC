//
//  BJBEntryController.h
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BJBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface BJBEntryController : NSObject

// MARK: - Properties
@property (nonatomic, readonly) NSMutableArray *entries;

- (void)addEntry: (BJBEntry *) entry;
- (void)removeEntry: (BJBEntry *)entry;
- (void)modifyEntry: (BJBEntry *)entry
          withTitle: (NSString *)title
               body: (NSString *)body;

+ (BJBEntryController *)shared;

@end

NS_ASSUME_NONNULL_END
