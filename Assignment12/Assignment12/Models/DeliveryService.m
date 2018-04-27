//
//  DeliveryService.m
//  Assignment12
//
//  Created by dexunzhu on 2018-04-27.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizzas = [NSMutableArray array];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza
{
    [_deliveredPizzas addObject:pizza];
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza:pizza];
}

- (NSString *)description{
    NSMutableString *des = [[NSMutableString alloc] init];
    [des appendString:@"Deliveried pizzas are: "];
    for (Pizza *pizza in _deliveredPizzas){
        [des appendString: [NSString stringWithFormat:@"[%@]", pizza]];
    }
    return des;
}


@end
