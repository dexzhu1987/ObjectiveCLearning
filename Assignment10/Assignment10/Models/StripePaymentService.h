//
//  StripePaymentService.h
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject<PaymentDelegate>
- (void) processPaymentAmount: (NSInteger) payment;
- (BOOL) canProcessPayment;
@end
