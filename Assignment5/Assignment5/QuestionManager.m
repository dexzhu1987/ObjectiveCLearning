//
//  QuestionManager.m
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

-(instancetype) init
{
    self = [super init];
    if (self){
        _questions = [NSMutableArray array];
    }
    return self;
}

+ (QuestionManager *) manager
{
    return [[QuestionManager alloc] init];
    //how to create a convenience generator;
}

-(void) addQuestion: (Question *) question
{
    [_questions addObject: question];
}

- (NSString*) timeOutput
{
    Question * firstQuestion = [_questions firstObject];
    Question * lastQuestion =  [_questions lastObject];
    NSDate *startTime = [firstQuestion startTime];
    NSDate *endTime = [lastQuestion endTime];
    double  timeUse = [endTime timeIntervalSinceDate: startTime];
    NSInteger totalQuestions = [_questions count];
    return [NSString stringWithFormat:@"total time: %.2fs, average time: %.2fs", timeUse, timeUse/totalQuestions];
                                         
}

@end
