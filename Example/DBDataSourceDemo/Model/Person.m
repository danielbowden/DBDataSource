//
//  Person.m
//  DBDataSourceDemo
//
//  Created by Daniel Bowden on 7/06/2014.
//  Copyright (c) 2014 Daniel Bowden. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)personWithFirstName:(NSString *)fName lastName:(NSString *)lName emailAddress:(NSString *)email
{
    Person *person = [[self alloc] init];
    person.firstName = fName;
    person.lastName = lName;
    person.emailAddress = email;
    
    return person;
}

@end
