//
//  ViewController.m
//  Basic
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *label;

@end

// This will make a label with the text "Hello, world!"
// and put it at ((x = 10, y = 10), (w = 100, y= 100)).
// Coordinates are measured from the top left of the screen.
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpLabel];
}

- (void)setUpLabel
{
    self.label = [[UILabel alloc] init];
    
    [self.label setText:@"Hello, world!"];
    [self.label setFrame:CGRectMake(10.0f, 10.0f, 100.0f, 100.0f)];
    
    // If this line is removed, the label will not be added to the view
    // hierarchy, and as a consequence it will be entirely ignored by
    // the view controller.
    [self.view addSubview:self.label];
}

@end
