//
//  BJBEntry.h
//  JournalObjC
//
//  Created by Brady Bentley on 12/17/18.
//  Copyright © 2018 Brady. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BJBEntry : NSObject

@property (nonatomic, readonly) NSString *title;
@property (nonatomic, readonly) NSString *bodyText;
@property (nonatomic, readonly) NSDate *timestamp;

- (instancetype) initWithTitle: (NSString *)title
                      bodyText: (NSString *)bodyText;

- (instancetype) initWithDictionary: (NSDictionary *)dictionary;

- (NSDictionary *)dictionaryCopy;

@end

NS_ASSUME_NONNULL_END
