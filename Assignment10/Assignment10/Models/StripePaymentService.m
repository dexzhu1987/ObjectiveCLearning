//
//  StripePaymentService.m
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount: (NSInteger) payment
{
    NSLog(@"%@ processed amount $%ld", @"Stripe", payment);
}

- (BOOL) canProcessPayment
{
    return  arc4random_uniform(2) == 1;
}
@end
