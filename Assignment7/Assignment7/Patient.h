//
//  Patient.h
//  Assignment7
//
//  Created by dexunzhu on 2018-04-23.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor; 

typedef enum:  NSInteger{
    MALE,
    FEMALE
} Gender;

@interface Patient : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) BOOL hasHealthCard;
@property (nonatomic, strong) NSMutableArray *presritions;
@property (nonatomic, strong) NSString *systoms;
- (instancetype)initWithName: (NSString *) name AndAge: (NSInteger) age AndGender: (Gender) gender AndHasHealthCard: (BOOL) hasHealthCard andSymtoms: (NSString *) symstoms;
- (BOOL) visitDoctor: (Doctor *) doc;
- (BOOL) requestMedication: (Doctor *) doc;
- (void) addToPrescriptionHistory: (NSString *) prescrition;
@end
