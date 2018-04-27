//
//  main.m
//  Assignment11
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

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        while (YES){
            Kitchen *restaurantKitchen = [Kitchen new];
            NSString *inputString = [InputHandler getUserInputWithPrompt:@"Please confirm if you want a manager to handler you pizza(y/n)"];
            Manager *managerA = [Manager new];
            SecondManager *managerB = [SecondManager new];
            
            if ([inputString isEqualToString:@"y"]){
                NSString *inputString2 = [InputHandler getUserInputWithPrompt:@"Please select your manager (1/2)"];
                if ([inputString2 isEqualToString:@"1"] ){
                    restaurantKitchen.delegate = managerA;
                } else {
                    restaurantKitchen.delegate = managerB;
                }
                
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            NSString *inputString3 = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString3 componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)];
            
            // And then send some message to the kitchen...
            Pizza *pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
            if (pizza == NULL){
                NSLog(@"Kitchen did not make the pizza");
            } else {
               NSLog(@"%@", pizza);
            }
            
        }
            
    }
    return 0;
}

