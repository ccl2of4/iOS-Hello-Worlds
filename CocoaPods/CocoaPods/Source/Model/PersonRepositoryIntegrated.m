//
//  PersonRepositoryIntegrated.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonRepositoryIntegrated.h"
#import "Restkit/Network/RKObjectManager.h"

@implementation PersonRepositoryIntegrated

- (void)fetchPeopleWithCompletion:(PeopleCompletionBlock)completion
{
    [[RKObjectManager sharedManager] getObjectsAtPath:@"somePath" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
        NSArray *people = [mappingResult array];
        completion(people, nil);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        completion(nil, error);
    }];
}

@end
