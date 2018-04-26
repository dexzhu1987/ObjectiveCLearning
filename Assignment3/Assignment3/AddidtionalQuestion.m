//
//  AddidtionalQuestion.m
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "AddidtionalQuestion.h"

@implementation AddidtionalQuestion

- (instancetype)init {
    if (self = [super init]) {
        int num1 = arc4random_uniform(91) + 10;
        int num2 = arc4random_uniform(91) + 10;
        self.question = [NSString stringWithFormat:@"%d + %d = ?", num1, num2];
        self.answer = num1 + num2;
    }
    return self;
}
@end
