//
//  Patient.m
//  Assignment7
//
//  Created by dexunzhu on 2018-04-23.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName: (NSString *) name AndAge: (NSInteger) age AndGender: (Gender) gender AndHasHealthCard: (BOOL) hasHealthCard andSymtoms: (NSString *) symstoms
{
    self = [super init];
    if (self) {
        _name = name;
        _age =  age;
        _gender = gender;
        _hasHealthCard = hasHealthCard;
        _presritions = [NSMutableArray array];
        _systoms = symstoms;
    }
    return self;
}

- (BOOL) visitDoctor: (Doctor *) doc
{
    NSLog(@"%@: Hello Dr, %@, My name is %@, I need you help", _name, [doc name], _name);
    //dcotor should check the patient health card;
    if ([doc addPatientIfPatientHasHeathCard: self]){
       return YES;
    } else {
       return NO;
    }
}

- (BOOL) requestMedication: (Doctor *) doc
{
    NSLog(@"%@: Dr, %@, I need some medication", _name, [doc name]);
    return ([doc checkIfPreviousDoctor: self]);
}


- (void) addToPrescriptionHistory: (NSString *) prescrition
{
    
    [_presritions addObject:prescrition];
}

@end
