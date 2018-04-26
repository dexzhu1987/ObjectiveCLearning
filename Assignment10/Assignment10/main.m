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
       
        
        switch (input) {
            case 1:
            {
                PaypalPaymentService *paypal = [PaypalPaymentService new];
                paymentGateway.delegate = paypal;
                NSLog(@"input %ld", input);
                [paymentGateway processPaymentAmount:random];
                break;
            }
            case 2:
            {
                StripePaymentService *stripe = [StripePaymentService new];
                paymentGateway.delegate = stripe;
                NSLog(@"input %ld", input);
                [paymentGateway processPaymentAmount:random];
                break;
            }
            case 3:
            {
                AmazonPaymentService *amazon = [AmazonPaymentService new];
                paymentGateway.delegate = amazon;
                NSLog(@"input %ld", input);
                [paymentGateway processPaymentAmount:random];
                break;
            }
            case 4:
            {
                ApplePaymentService *apple = [ApplePaymentService new];
                paymentGateway.delegate = apple;
                NSLog(@"input %ld", input);
                [paymentGateway processPaymentAmount:random];
                break;
            }
            default:
                break;
        }
        
        
        
        
    }
    return 0;
}
