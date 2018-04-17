//
//  AdditionalQuestion.m
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "AdditionalQuestion.h"

@implementation AdditionalQuestion{
}

- (instancetype)init {
    if (self = [super init]) {
        //get two random numbers;
        // arc4ramdom_uniform(91) -- (random from 0-90)
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        _question = [NSString stringWithFormat: @"%d + %d = ?", num1, num2];
        _answer = num1 + num2;
    
    }
    return self;
}
@end
