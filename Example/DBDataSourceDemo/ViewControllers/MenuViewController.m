//
//  MenuViewController.m
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 6/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "MenuViewController.h"

#import "DemoTableViewController.h"
#import "DemoCollectionViewController.h"

@interface MenuViewController ()

- (IBAction)demoTableView:(id)sender;
- (IBAction)demoCollectionView:(id)sender;

@end

@implementation MenuViewController

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

    self.title = @"DBDataSource Demo";
}

- (IBAction)demoTableView:(id)sender
{
    DemoTableViewController *viewController = [[DemoTableViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)demoCollectionView:(id)sender
{
    DemoCollectionViewController *viewController = [[DemoCollectionViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
