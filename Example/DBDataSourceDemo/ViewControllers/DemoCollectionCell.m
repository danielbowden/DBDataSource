//
//  DemoCollectionCell.m
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 7/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "DemoCollectionCell.h"

#import "Person.h"

@interface DemoCollectionCell ()

@property (nonatomic, weak) IBOutlet UILabel *firstNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *lastNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *emailLabel;

@end

@implementation DemoCollectionCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (NSString *)reuseIdentifier
{
    return [[self class] cellIdentifier];
}

+ (NSString *)cellIdentifier
{
    return NSStringFromClass([self class]);
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"DemoCollectionCell" bundle:nil];
}

- (void)populateWithPerson:(Person *)person
{
    self.firstNameLabel.text = person.firstName;
    self.lastNameLabel.text = person.lastName;
    self.emailLabel.text = person.emailAddress;
}

- (void)awakeFromNib
{
    self.backgroundView = [[UIView alloc] initWithFrame:self.bounds];
    self.backgroundView.backgroundColor = [UIColor lightGrayColor];
    self.backgroundView.layer.cornerRadius = 2.0;
    self.backgroundView.layer.borderColor = [UIColor darkGrayColor].CGColor;
    self.backgroundView.layer.borderWidth = 1.0;
}

@end
