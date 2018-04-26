//
//  Cook.m
//  Assignment9
//
//  Created by dexunzhu on 2018-04-25.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *) food{
    NSString *lower = [food lowercaseString];
    if ([lower isEqualToString:@"bao"]){
        return 1.00;
    } else if ([lower isEqualToString:@"shortbread"]){
        return 2.00;
    }
    
    return 0.00;
}

@end
