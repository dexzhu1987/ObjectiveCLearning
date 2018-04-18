//
//  Person.m
//  ObjectiveCPractive
//
//  Created by Derrick on 2018-04-16.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import "Person.h"
@interface Person ()
// private property

@end


@implementation Person {
    // private instance variables
}
- (instancetype)initWithName: (NSString *) name AndAge: (int) age {
    if ((self = [super init])) {
        _name = name;
        _age = age;
    }
    return self;
}

- (BOOL) shouldDateOfAge: (int) age {
    if (age <= (_age / 2 + 7) && age >= (_age / 2 - 7)){
        return YES;
    }
    return NO;
}

+ (void) printSomething {
    NSLog(@"Hello World");
}

@end
