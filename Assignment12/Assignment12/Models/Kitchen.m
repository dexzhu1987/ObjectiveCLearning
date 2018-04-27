//
//  Kitchen.m
//  Assignment8
//
//  Created by dexunzhu on 2018-04-24.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings andDeliveryService: (DeliveryService *) service
{
    BOOL shouldmakePizza = YES;
    
    if (self.delegate != NULL){
        shouldmakePizza = [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings];
    }
    
    if (!shouldmakePizza){
        return nil;
    } else {
       
        Pizza *pizza;
        
        if ([self.delegate kitchenShouldUpgradeOrder:self]){
            size = Large;
        }
        
        if ([toppings containsObject:@"pepperoni"]){
            pizza = [Pizza largePepperoni];
        }  else if ([toppings containsObject:@"beef"] || [toppings containsObject:@"pork"] || [toppings containsObject:@"chicken"]) {
            pizza = [Pizza MeatLoverWithSize:size];
        } else {
            pizza = [[Pizza alloc]initWithSize:Large AndToppings:toppings];
        }
        [self.delegate callDeliveryService:service WithPizza:pizza];
        [self.delegate kitchenDidMakePizza:pizza];
        return pizza;
        
    }
}



@end
