//
//  PersonRepository.h
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^PeopleCompletionBlock)(NSArray *people, NSError *error);

@interface PersonRepository : NSObject

+ (PersonRepository *)sharedInstance;
- (void)fetchPeopleWithCompletion:(PeopleCompletionBlock)completion;

@end
