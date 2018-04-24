//
//  main.m
//  Assignment8
//
//  Created by dexunzhu on 2018-04-24.
//  Copyright © 2018 dexunzhu. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "InputHandler.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSString *inputString = [InputHandler getUserInputWithPrompt:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *size = commandWords[0];
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count]-1)];
            
            // And then send some message to the kitchen...
            Pizza *pizza;
            if ([toppings containsObject:@"pepperoni"]){
                pizza = [Pizza largePepperoni];
            } else if ([toppings containsObject:@"beef"] || [toppings containsObject:@"pork"] || [toppings containsObject:@"chicken"] ){
                pizza = [Pizza MeatLoverWithSize:[Pizza getPizzaSize:size]];
            } else {
                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
            }
            NSLog(@"%@",pizza);
            
            
        }
        
    }
    return 0;
}
