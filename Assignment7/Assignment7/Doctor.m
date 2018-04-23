//
//  Doctor.m
//  Assignment7
//
//  Created by dexunzhu on 2018-04-23.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor
- (instancetype)initWithName: (NSString *) name AndSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patients = [NSMutableArray array];
    }
    return self;
}

- (BOOL) addPatientIfPatientHasHeathCard: (Patient *) pat
{
    NSLog(@"%@: Let me see your healthCard.", _name);
    if ([pat hasHealthCard]){
        [_patients addObject:pat];
        NSLog(@"%@: You have a valid healthcard, so now you are my patient!", _name);
        return YES;
    } else {
        NSLog(@"%@: You do not have a valid healthCard. Please come back with a vaild health card", _name);
        return NO;
    };
}

- (BOOL) checkIfPreviousDoctor: (Patient *) pat
{
    NSLog(@"%@: Let me check if I am able to write prescritpions for you", _name);
    if ([self checkIfIHaveThisPatient: pat]){
        NSLog(@"%@: Looks Like I am your designated doctor. I will need to do some investigation before writing the prescription", _name);
        [self checkPrescriptionHistory: pat];
        [self writePrescription: pat];
        return YES;
    } else {
        NSLog(@"%@: Sorry! Looks like you are not my patient, you should find doctor has accepted instead ", _name);
        return NO;
    };
}


- (void) writePrescription: (Patient *) pat
{
    NSLog(@"%@: Ok, I have some understanding. Next, What symptoms are you currently experiencing", _name);
    NSLog(@"%@: I am currently have the following symptoms: %@", [pat name], [pat systoms] );
    NSString* presciption = [NSString stringWithFormat: @"[presciption for symptoms: %@]", [pat systoms] ];
    NSLog(@"%@: Ok, %@ has been created and added to your prescrption history. You should get better real soon with this Medicication", _name, presciption);
    [pat addToPrescriptionHistory:presciption];
    NSLog(@"%@: Thank you Dr. %@", [pat name], _name);
}

- (void) checkPrescriptionHistory: (Patient *) pat
{
    NSLog(@"%@: First of all, I have to look at your medical history", _name);
    NSMutableString *history = [[NSMutableString alloc] init];
    for (NSString *p in [pat presritions])
    {
        [history appendString: p];
    }
    NSLog(@"%@: After checking, your history are: %@", _name, history);
}


-(BOOL) checkIfIHaveThisPatient: (Patient *) pat
{
    for (Patient *p in _patients){
        if ([[p name] isEqualToString:[pat name]]){
            return YES;
        }
    }
    return NO;
}


@end
