//
//  main.m
//  Assignment10
//
//  Created by dexunzhu on 2018-04-26.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int random = arc4random_uniform(901) + 100;
        NSString *promt = [NSString stringWithFormat: @"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", random];
        NSString *userInput = [InputHandler getUserInputWithPrompt:promt];
        NSInteger input = [userInput integerValue];
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        NSLog(@"input %ld", input);
        
        switch (input) {
            case 1:
            {
                PaypalPaymentService *paypal = [PaypalPaymentService new];
                paymentGateway.delegate = paypal;
                [paymentGateway processPaymentAmount:random];
                break;
                //instance(variable) created in the block stays in the block  (local variable)
                //so if we delegate here and use the method [processPaymentAmount] after the block, it will not use the delegator methods [will not use paypal method]
            }
            case 2:
            {
                StripePaymentService *stripe = [StripePaymentService new];
                paymentGateway.delegate = stripe;
                [paymentGateway processPaymentAmount:random];
                break;
            }
            case 3:
            {
                AmazonPaymentService *amazon = [AmazonPaymentService new];
                paymentGateway.delegate = amazon;
                [paymentGateway processPaymentAmount:random];
                break;
            }
            case 4:
            {
                ApplePaymentService *apple = [ApplePaymentService new];
                paymentGateway.delegate = apple;
                [paymentGateway processPaymentAmount:random];
                break;
            }
            default:
                break;
        }
        
        
        
        
    }
    return 0;
}
