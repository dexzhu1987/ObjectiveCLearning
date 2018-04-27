//
//  PaypalPaymentService.m
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) payment
{
    NSLog(@"%@ processed amount $%ld", @"Paypal", payment);
}

- (BOOL) canProcessPayment
{
    return  arc4random_uniform(2) == 1;
}
@end
