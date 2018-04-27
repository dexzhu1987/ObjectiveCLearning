//
//  main.m
//  Assignment12
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "InputHandler.h"
#import "Manager.h"
#import "SecondManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *managerA = [Manager new];
        SecondManager *managerB = [SecondManager new];
        DeliveryService *service = [DeliveryService new];
        
        while (YES){
           
            
            NSString *inputString2 = [InputHandler getUserInputWithPrompt:@"Please select your manager (1/2)"];
            if ([inputString2 isEqualToString:@"1"] ){
                restaurantKitchen.delegate = managerA;
            } else {
                restaurantKitchen.delegate = managerB;
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSString *inputString3 = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString3 componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)];
            
            // And then send some message to the kitchen...
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings andDeliveryService:service];
            if (pizza == NULL){
                NSLog(@"Kitchen did not make the pizza");
            } else {
                NSLog(@"%@", pizza);
            }
            
            NSLog(@"%@", service);
        }
        
    }
    return 0;
}
