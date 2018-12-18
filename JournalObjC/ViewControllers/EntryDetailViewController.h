//
//  EntryDetailViewController.h
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BJBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController

// MARK: - Properties
@property (nonatomic) BJBEntry *entry;

- (void) updateViews;

@end

NS_ASSUME_NONNULL_END
