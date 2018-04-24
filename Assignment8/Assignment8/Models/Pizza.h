//
//  Pizza.h
//  Assignment8
//
//  Created by dexunzhu on 2018-04-24.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum: NSInteger{
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;
- (instancetype)initWithSize: (PizzaSize) size AndToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) MeatLoverWithSize: (PizzaSize) size;
+ (PizzaSize) getPizzaSize: (NSString *) size;
@end
