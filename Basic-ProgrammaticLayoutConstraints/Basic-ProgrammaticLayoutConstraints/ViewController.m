//
//  ViewController.m
//  Basic-ProgrammaticLayoutConstraints
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpLabel];
    
    id constraints = [self constraints];
    [self.view addConstraints:constraints];
}

- (void)setUpLabel
{
    self.label = [[UILabel alloc] init];
    
    [self.label setText:@"Hello, world!"];
    [self.label setBackgroundColor:[UIColor lightGrayColor]];
    [self.label setTextAlignment:NSTextAlignmentCenter];
    
    // This property needs to be set to no in order for our constraints to
    // work properly. If the constraints are created via Interface Builder,
    // this property is automatically set to NO.
    [self.label setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self.view addSubview:self.label];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}

- (NSArray *)constraints
{
    NSDictionary *views = @{@"label" : self.label};
    NSString *formatString = @"H:|-20-[label]-20-|";
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:formatString options:0 metrics:nil views:views];
    
    NSString *verticalFormatString = @"V:|-20-[label]-20-|";
    NSArray *verticalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:verticalFormatString options:0 metrics:nil views:views];
    
    return [constraints arrayByAddingObjectsFromArray:verticalConstraints];
}

@end
