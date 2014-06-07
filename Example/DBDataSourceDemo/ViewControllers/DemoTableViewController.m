//
//  DemoTableViewController.m
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 6/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "DemoTableViewController.h"

#import <DBDataSource.h>

@interface DemoTableViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) DBDataSource *demoDataSource;

- (NSArray *)generateDemoData;

@end

static NSString * const DemoCellIdentifier = @"DemoTableCellIdentifier";

@implementation DemoTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CellConfigureBlock configureCell = ^(UITableViewCell *cell, NSString *item) {
        cell.textLabel.text = item;
    };
    
    self.demoDataSource = [[DBDataSource alloc] initWithArray:[self generateDemoData] cellIdentifier:DemoCellIdentifier configureCellBlock:configureCell];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self.demoDataSource;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:DemoCellIdentifier];
    [self.view addSubview:self.tableView];
}

- (NSArray *)generateDemoData
{
    NSMutableArray *mutableArr = [NSMutableArray array];
    
    for (NSInteger i = 0; i < 40.0; i++)
    {
        [mutableArr addObject:[NSString stringWithFormat:@"Demo data %d", i]];
    }
    
    return [mutableArr copy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
