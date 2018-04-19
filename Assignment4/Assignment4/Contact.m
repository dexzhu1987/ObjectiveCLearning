//
//  Contact.m
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Contact.h"

@implementation Contact {
    
}

- (instancetype) initWithName: (NSString *) name AndEmail: (NSString *) email {
    self = [super init];
    if (self)
    {
        _name = name;
        _email = email;
        _numbers = [[NSMutableArray alloc]init ];
    }
    return self;
}

- (void) addPhoneNumber: (PhoneNumber*) PhoneNumber
{
    [_numbers addObject:PhoneNumber];
}

@end
