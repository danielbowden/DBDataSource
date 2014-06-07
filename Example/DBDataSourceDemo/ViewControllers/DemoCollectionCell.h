//
//  DemoCollectionCell.h
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 7/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Person;

@interface DemoCollectionCell : UICollectionViewCell

+ (NSString *)cellIdentifier;
+ (UINib *)nib;

- (void)populateWithPerson:(Person *)person;

@end
