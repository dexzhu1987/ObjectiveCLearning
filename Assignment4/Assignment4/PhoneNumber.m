//
//  PhoneNumber.m
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype) initWithLabel: (NSString *) label AndNumber: (NSString *) number
{
    self = [super init];
    if (self)
    {
        _label = label;
        _number = number;
    }
    return self;
}
@end
