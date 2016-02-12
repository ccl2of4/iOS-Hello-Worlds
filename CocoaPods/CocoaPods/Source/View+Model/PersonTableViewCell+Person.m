//
//  PersonTableViewCell+Person.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonTableViewCell+Person.h"

@implementation PersonTableViewCell (Person)

- (void)configureForPerson:(Person *)person
{
    self.name = person.name;
    self.phrase = person.phrase;
    self.contentView.backgroundColor = [self colorForGender:person.gender];
}

- (UIColor *)colorForGender:(PersonGender)gender
{
    return @{
        @(PersonGenderFemale) : [UIColor purpleColor],
        @(PersonGenderMale) : [UIColor blueColor]
    }[@(gender)];
}

@end
