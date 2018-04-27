//
//  Manager.h
//  Assignment11
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@interface Manager : NSObject<KitchenDelegate>
-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
-(void)kitchenDidMakePizza:(Pizza *)pizza;
@end
