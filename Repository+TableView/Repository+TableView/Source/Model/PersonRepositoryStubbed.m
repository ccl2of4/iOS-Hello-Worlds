//
//  PersonRepositoryStubbed.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonRepositoryStubbed.h"
#import "Person.h"

@implementation PersonRepositoryStubbed

- (void)fetchPeopleWithCompletion:(PeopleCompletionBlock)completion
{
    NSParameterAssert(completion);
    
    NSArray *people = @[
        [[Person alloc] initWithName:@"John Doe" phrase:@"I'm a person" gender:PersonGenderMale],
        [[Person alloc] initWithName:@"Jane Doe" phrase:@"I'm John Doe's Wife." gender:PersonGenderFemale],
        [[Person alloc] initWithName:@"Alex Robinson" phrase:@"I'm the third person in the list." gender:PersonGenderMale]
    ];
    
    // Simulate a long network call, so that even though the data is stubbed, we can
    // test the app as though the delay is actually there.
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        completion(people, nil);
    });
}

@end
