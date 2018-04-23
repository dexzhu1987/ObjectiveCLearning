//
//  main.m
//  Assignment7
//
//  Created by dexunzhu on 2018-04-23.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Patient *p1 = [[Patient alloc] initWithName:@"Alex" AndAge:21 AndGender:MALE AndHasHealthCard:NO andSymtoms:@"Cough And Fever"];
        
        Patient *p2 = [[Patient alloc] initWithName:@"Miho" AndAge:20 AndGender:FEMALE AndHasHealthCard:YES andSymtoms:@"Headace"];
        
        Patient *p3 = [[Patient alloc] initWithName:@"Elif" AndAge:20 AndGender:FEMALE AndHasHealthCard:YES andSymtoms:@"Joint pain"];
        
        Doctor *d1 = [[Doctor alloc] initWithName:@"Kana" AndSpecialization: @"Brain Surgeon"];
        
        Doctor *d2 = [[Doctor alloc] initWithName:@"Hunter" AndSpecialization: @"General Doctor"];
       
        if ([p1 visitDoctor: d1]){
            if ([p1 requestMedication:d1]){
                NSLog(@"TREATMENT SUCCESSFULL");
            } else {
                NSLog(@"FAILED TO TREAT THIS PATIENT");
            }
        } else {
            NSLog(@"FAILED TO VIST");
        }
        
        NSLog(@"\n");
        
        if ([p2 visitDoctor: d1]){
            if ([p2 requestMedication:d1]){
                NSLog(@"TREATMENT SUCCESSFULL");
            } else {
                NSLog(@"FAILED TO TREAT THIS PATIENT");
            }
        } else {
            NSLog(@"FAILED TO VIST");
        }
        
        NSLog(@"\n");
        
        if ([p3 visitDoctor: d1]){
            if ([p3 requestMedication:d2]){
                NSLog(@"TREATMENT SUCCESSFULL");
            } else {
                NSLog(@"FAILED TO TREAT THIS PATIENT");
            }
        } else {
            NSLog(@"FAILED TO VIST");
        }
        
        NSLog(@"\n");
        
        
        [p2 setSystoms:@"Flu"];
        if ([p2 visitDoctor: d1]){
            if ([p2 requestMedication:d1]){
                NSLog(@"TREATMENT SUCCESSFULL");
            } else {
                NSLog(@"FAILED TO TREAT THIS PATIENT");
            }
        } else {
            NSLog(@"FAILED TO VIST");
        }
        
        
    }
    return 0;
}
