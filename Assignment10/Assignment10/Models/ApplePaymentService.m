//
//  ApplePaymentService.m
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount: (NSInteger) payment
{
    NSLog(@"%@ processed amount $%ld", @"Apple", payment);
}

- (BOOL) canProcessPayment
{
    return  arc4random_uniform(2) == 1;
}
@end
