//
//  PersonRepository.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonRepository.h"
#import "NSException+AbstractMethods.h"
#import "PersonRepositoryStubbed.h"
#import "PersonRepositoryIntegrated.h"

#define STUB_PERSON_REPOSITORY

@implementation PersonRepository

+ (PersonRepository *)sharedInstance
{
    static PersonRepository *personRepository = nil;
    
    if (!personRepository) {
        personRepository =
        
#ifdef STUB_PERSON_REPOSITORY
        [[PersonRepositoryStubbed alloc] init];
#else
        [[PersonRepositoryIntegrated alloc] init];
#endif
        
    }
    return personRepository;
}

- (void)fetchPeopleWithCompletion:(PeopleCompletionBlock)completion
{
    [[NSException exceptionForCallingAbstractMethod:_cmd] raise];
    
    // alternatively
    //@throw [NSException exceptionForCallingAbstractMethod:_cmd];
}

@end
