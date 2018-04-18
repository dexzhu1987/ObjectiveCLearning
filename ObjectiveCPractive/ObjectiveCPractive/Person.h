//
//  Person.h
//  ObjectiveCPractive
//
//  Created by Derrick on 2018-04-16.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Person : NSObject
// public properties  public methods
- (id)initWithName: (NSString *) name AndAge: (int) age;
- (BOOL) canDateOfAge: (int) age;
+ (void) printSomething;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign, getter=getAge) int age;

@end
