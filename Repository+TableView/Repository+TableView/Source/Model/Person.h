//
//  Person.h
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PersonGender) {
    PersonGenderMale,
    PersonGenderFemale
};

@interface Person : NSObject

- (instancetype)initWithName:(NSString *)name
        phrase:(NSString *)phrase
        gender:(PersonGender)gender;

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *phrase;
@property (nonatomic) PersonGender gender;

@end
