//
//  PersonTableViewCell+Person.h
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "PersonTableViewCell.h"
#import "Person.h"

@interface PersonTableViewCell (Person)

- (void)configureForPerson:(Person *)person;

@end
