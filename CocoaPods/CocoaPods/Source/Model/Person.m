//
//  Person.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name phrase:(NSString *)phrase gender:(PersonGender)gender
{
    if (self = [super init]) {
        self.name = name;
        self.phrase = phrase;
        self.gender = gender;
    }
    return self;
}

@end
