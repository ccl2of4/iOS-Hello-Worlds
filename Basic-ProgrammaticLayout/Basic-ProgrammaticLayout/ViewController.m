//
//  ViewController.m
//  Basic-ProgrammaticLayout
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UILabel *label;

@end

// This will make a label with the text "Hello, world!"
// and center it in the screen.
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
    [self.label setBackgroundColor:[UIColor lightGrayColor]];
    [self.label setTextColor:[UIColor darkGrayColor]];
    [self.label setTextAlignment:NSTextAlignmentCenter];
    
    // If this line is removed, the label will not be added to the view
    // hierarchy, and as a consequence it will be entirely ignored by
    // the view controller.
    [self.view addSubview:self.label];
}

/*
 * -viewDidLoad is called once near the beginning of the view controller's lifecycle,
 * while -viewDidLayoutSubviews is called any time a change is made to the root view's frame/bounds.
 *
 * Layout logic that depends on the frame/bounds of the root view must be done here
 * as opposed to -viewDidLoad so that logic is based on the correct numbers.
 *
 * Alternatively, if you use constraints, you don't have to worry about where your layout logic is
 * written. That is shown in Basic-ProgrammaticLayoutConstraints.
 */
- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    //[self layoutLabel];
    [self layoutLabelUsingCGGeometryAPI];
}

- (void)layoutLabel
{
    CGRect bounds = self.view.bounds;
    CGRect frame = CGRectZero;
    
    frame.size.width = bounds.size.width * .80;
    frame.size.height = bounds.size.height * .80;
    frame.origin.x = bounds.origin.x + (bounds.size.width * .10);
    frame.origin.y = bounds.origin.y + (bounds.size.height * .10);
    
    self.label.frame = frame;
}

// Doing geometry programmatically like it's done above can be annoying.
// Apple provides a small CGGeometry API that makes it easier to
// manipulate CGRects. This method and the method above have exactly
// the same end result.
- (void)layoutLabelUsingCGGeometryAPI
{
    CGRect bounds = self.view.bounds;
    CGRect frame = bounds;
    
    CGFloat dx = frame.size.width * .10;
    CGFloat dy = frame.size.height * .10;
    
    // Shrinks the CGRect by dx,dy in the x,y directions,
    // while keeping its center in the same place.
    frame = CGRectInset(frame, dx, dy);
    
    self.label.frame = frame;
}

@end
