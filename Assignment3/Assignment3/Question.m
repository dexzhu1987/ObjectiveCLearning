//
//  AdditionalQuestion.m
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Question.h"

@implementation Question{
}

- (instancetype)init
{
    if (self = [super init]) {
        //get two random numbers;
        // arc4ramdom_uniform(91) -- (random from 0-90)
        
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        _startTime = [NSDate date];
        
    }
    return self;
}

- (NSInteger) answer
{
    _endTime = [NSDate date];
    return _answer;
}


- (NSTimeInterval) timetoAnswer
{
    return [_endTime timeIntervalSinceDate: _startTime];
    //value is double, in seconds;
}

- (void) generateQuestion
{
    
}

@end
