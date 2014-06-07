//
//  DemoCollectionViewController.m
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 7/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "DemoCollectionViewController.h"

#import "Person.h"
#import "DemoCollectionCell.h"

#import <DBDataSource.h>

@interface DemoCollectionViewController () <UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) DBDataSource *demoDataSource;

- (NSArray *)generateDemoData;

@end

@implementation DemoCollectionViewController

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
    
    CellConfigureBlock configureCell = ^(DemoCollectionCell *cell, Person *person) {
        [cell populateWithPerson:person];
    };
    
    self.demoDataSource = [[DBDataSource alloc] initWithArray:[self generateDemoData] cellIdentifier:[DemoCollectionCell cellIdentifier] configureCellBlock:configureCell];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(100.0, 100.0);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:flowLayout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self.demoDataSource;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerNib:[DemoCollectionCell nib] forCellWithReuseIdentifier:[DemoCollectionCell cellIdentifier]];
    [self.view addSubview:self.collectionView];
}

- (NSArray *)generateDemoData
{
    return @[
             [Person personWithFirstName:@"Daniel" lastName:@"Bowden" emailAddress:@"daniel@bowden.in"],
             [Person personWithFirstName:@"Buster" lastName:@"Posey" emailAddress:@"buster@posey.com"],
             [Person personWithFirstName:@"Pablo" lastName:@"Sandoval" emailAddress:@"pablo@sandoval.com"],
             [Person personWithFirstName:@"Brandon" lastName:@"Crawford" emailAddress:@"brendan@crawford.com"],
             [Person personWithFirstName:@"Angel" lastName:@"Pagan" emailAddress:@"angel@pagan.com"],
             [Person personWithFirstName:@"Hunter" lastName:@"Pence" emailAddress:@"hunter@pence.com"],
             [Person personWithFirstName:@"Sergio" lastName:@"Romo" emailAddress:@"sergio@romo.com"],
             [Person personWithFirstName:@"Tim" lastName:@"Lincecum" emailAddress:@"tim@lincecum.com"],
             [Person personWithFirstName:@"Matt" lastName:@"Cain" emailAddress:@"matt@cain.com"],
             [Person personWithFirstName:@"Mike" lastName:@"Morse" emailAddress:@"mike@morse.com"],
             [Person personWithFirstName:@"Jeremy" lastName:@"Affeldt" emailAddress:@"jeremy@affeldt.com"],
             [Person personWithFirstName:@"Madison" lastName:@"Bumgarner" emailAddress:@"madison@bumgarner.com"],
             [Person personWithFirstName:@"Javier" lastName:@"Lopez" emailAddress:@"javier@lopez.com"],
             [Person personWithFirstName:@"Ryan" lastName:@"Vogelsong" emailAddress:@"ryan@vogelsong.com"],
             [Person personWithFirstName:@"Hector" lastName:@"Sanchez" emailAddress:@"hector@sanchez.com"],
             [Person personWithFirstName:@"Gregor" lastName:@"Blanco" emailAddress:@"gregor@blanco.com"]
             ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
