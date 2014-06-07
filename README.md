# DBDataSource

DBDataSource is an easy to use datasource conforming to both UITableView and UICollectionView that can be dropped in to a project to allow quick population of tableviews and collectionviews. Use the CellConfigureBlock to populate the contents of your cell and initialise the datasource with an array.

There is an example project included. Clone the repo and open "DBDataSourceDemo.xcworkspace".

**Basic example with an array of strings and a default tablecell:**
```objc
CellConfigureBlock configureCell = ^(UITableViewCell *cell, NSString *item) {
    cell.textLabel.text = item;
};

NSArray *myArray = @[@"Demo data 1", @"Demo data 2", @"Demo data 3"];

self.demoDataSource = [[DBDataSource alloc] initWithArray:myArray cellIdentifier:DemoCellIdentifier configureCellBlock:configureCell];

self.tableView.dataSource = self.demoDataSource;
```

**Another example using an array of Person objects and a custom collectionviewcell:**
```obj
CellConfigureBlock configureCell = ^(DemoCollectionCell *cell, Person *person) {
        [cell populateWithPerson:person];
    };
    
NSArray *myArray = @[
     [Person personWithFirstName:@"Daniel" lastName:@"Bowden" emailAddress:@"daniel@bowden.in"],
     [Person personWithFirstName:@"Buster" lastName:@"Posey" emailAddress:@"buster@posey.com"],
     [Person personWithFirstName:@"Pablo" lastName:@"Sandoval" emailAddress:@"pablo@sandoval.com"]
     ];
    
self.demoDataSource = [[DBDataSource alloc] initWithArray:myArray cellIdentifier:[DemoCollectionCell cellIdentifier] configureCellBlock:configureCell];
self.collectionView.dataSource = self.demoDataSource;
```

To access an item of the datasource for use in methods such as `didSelectSelectItemAtIndexPath` or `heightForRowAtIndexPath` you can use `[self.demoDataSource itemAtIndexPath:indexPath];`

## Installation

DBDataSource is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "DBDataSource"

## Author

Daniel Bowden, [danielbowden](https://github.com/danielbowden).

## License

DBDataSource is available under the MIT license. See the LICENSE file for more info.

