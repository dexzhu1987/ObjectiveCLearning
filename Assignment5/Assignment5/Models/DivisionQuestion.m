//
//  DivisionQuestion.m
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "DivisionQuestion.h"


@implementation DivisionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    // set super.answer here
    self.question = [NSString stringWithFormat:@"%ld / %ld = ?", self.leftValue, self.rightValue];
    
    // set super.question here
    self.answer = self.leftValue / self.rightValue;
    
}

@end
