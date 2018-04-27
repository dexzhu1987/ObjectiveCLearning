//
//  DeliveryService.h
//  Assignment12
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

@interface DeliveryService : NSObject

@property (nonatomic, strong) NSMutableArray *deliveredPizzas;

- (void)deliverPizza:(Pizza *)pizza;

@end
