//
//  Doctor.h
//  Assignment7
//
//  Created by dexunzhu on 2018-04-23.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableArray* patients;
- (instancetype)initWithName: (NSString *) name AndSpecialization: (NSString *) specialization;
- (BOOL) addPatientIfPatientHasHeathCard: (Patient *) pat;
- (BOOL) checkIfPreviousDoctor: (Patient *) pat;
- (void) writePrescription: (Patient *) pat;
- (void) checkPrescriptionHistory: (Patient *) pat;
@end
