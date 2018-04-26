//
//  PaymentGateway.m
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "PaymentGateway.h"



@implementation PaymentGateway
- (void) processPaymentAmount: (NSInteger) payment{
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:payment];
    } else {
         NSLog(@"Sorry, unable to process payment this time");
    }
    

}
@end
