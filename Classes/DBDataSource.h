//
//  DBDataSource.h
//  AllTime
//
//  Created by Daniel Bowden on 28/02/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^CellConfigureBlock)(id cell, id item);

@interface DBDataSource : NSObject <UITableViewDataSource, UICollectionViewDataSource>

- (id)initWithArray:(NSArray *)anArray cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(CellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
