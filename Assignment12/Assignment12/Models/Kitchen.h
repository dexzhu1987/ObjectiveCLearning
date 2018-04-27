//
//  Kitchen.h
//  Assignment8
//
//  Created by dexunzhu on 2018-04-24.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"
@class Kitchen;

@protocol KitchenDelegate<NSObject>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;
-(void)callDeliveryService: (DeliveryService *) service WithPizza: (Pizza *) pizza;
@end

@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> delegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings andDeliveryService: (DeliveryService *) service;

@end
