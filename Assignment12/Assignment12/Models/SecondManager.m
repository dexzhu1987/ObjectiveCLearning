//
//  SecondManager.m
//  Assignment11
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"%@",[NSString stringWithFormat:@"Thank you for ordering pizza: %@", pizza]);
}

-(void)callDeliveryService: (DeliveryService *) service WithPizza: (Pizza *) pizza
{
    [service deliverPizza:pizza];
}
@end
