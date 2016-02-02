//
//  ViewController.m
//  Repository+TableView
//
//  Created by Connor Lirot on 2/2/16.
//  Copyright (c) 2016 ccl2of4. All rights reserved.
//

#import "ViewController.h"
#import "PersonRepository.h"
#import "PersonTableViewCell.h"
#import "PersonTableViewCell+Person.h"

@interface ViewController () <UITableViewDataSource>

@property (nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSArray *people;

@end

static NSString * const CellReuseIdentifier = @"CellReuseIdentifier";

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadData];
    [self setUpTableView];
}

- (void)setUpTableView
{
    self.tableView.dataSource = self;
    [self.tableView registerClass:[PersonTableViewCell class] forCellReuseIdentifier:CellReuseIdentifier];
}

- (void)loadData
{
    [[PersonRepository sharedInstance] fetchPeopleWithCompletion:^(NSArray *people, NSError *error) {
        // Not going to check for error here, but remember to handle error appropriately
        // when it occurs.
        
        self.people = people;
        [self.tableView reloadData];
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.people count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellReuseIdentifier forIndexPath:indexPath];
    
    Person *person = [self personForIndexPath:indexPath];
    [cell configureForPerson:person];
    
    return cell;
}

- (Person *)personForIndexPath:(NSIndexPath *)indexPath
{
    return self.people[indexPath.row];
}

@end
