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

-(void) addQuestion: (AddidtionalQuestion *) question
{
    [_questions addObject: question];
}



@end
