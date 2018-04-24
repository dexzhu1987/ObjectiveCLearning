//
//  Pizza.m
//  Assignment8
//
//  Created by dexunzhu on 2018-04-24.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size AndToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}


+ (Pizza *) largePepperoni
{
    NSArray *topping = @[@"pepperoni", @"cheese", @"tomato"];
    return [[Pizza alloc]initWithSize:Large AndToppings:topping];
}

+ (Pizza *) MeatLoverWithSize: (PizzaSize) size
{
    NSArray *toppings = @[@"beef", @"chicken", @"pork"];
    return [[Pizza alloc]initWithSize:size AndToppings:toppings];
}


+ (PizzaSize) getPizzaSize: (NSString *) size
{
    NSString * lower = [size lowercaseString];
    if ([lower isEqualToString: @"large"]){
        return Large;
    } else if ([lower isEqualToString: @"medium"]){
        return Medium;
    } if ([lower isEqualToString: @"small"]){
        return Small;
    }
    return Large;
}

- (NSString *) description
{
    NSString *size;
    switch (_size) {
        case Large:
            size = @"Large";
            break;
        case Medium:
            size = @"Medium";
            break;
        case Small:
            size = @"Small";
            break;
        default:
            size = @"Large";
            break;
    }
    return [NSString stringWithFormat:@"%@ Pizza with %@, %@, %@.", size, _toppings[0], _toppings[1], _toppings[2]];
}

@end
