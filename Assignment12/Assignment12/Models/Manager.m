//
//  Manager.m
//  Assignment11
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Manager.h"

@implementation Manager
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    
}

-(void)callDeliveryService: (DeliveryService *) service WithPizza: (Pizza *) pizza
{
    [service deliverPizza:pizza];
}
@end
