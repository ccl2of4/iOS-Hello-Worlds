//
//  NSException+AbstractMethods.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "NSException+AbstractMethods.h"

@implementation NSException (AbstractMethods)

+ (NSException *)exceptionForCallingAbstractMethod:(SEL)selector
{
    return [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"%@ must be overriden by subclasses.", NSStringFromSelector(selector)]
                                 userInfo:nil];
}

@end
