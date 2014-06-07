//
//  Person.h
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 7/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *emailAddress;

+ (instancetype)personWithFirstName:(NSString *)fName lastName:(NSString *)lName emailAddress:(NSString *)email;

@end
