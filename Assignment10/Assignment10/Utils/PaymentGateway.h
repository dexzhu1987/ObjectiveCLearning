//
//  PaymentGateway.h
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger) payment;
- (BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void) processPaymentAmount: (NSInteger) payment;

@end
