//
//  QuestionFactory.m
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory
-(Question *) generateRandomQuestion
{
    AddidtionalQuestion * question1 = [[AddidtionalQuestion alloc] init];
    SubtractionQuestion * question2 = [[SubtractionQuestion alloc] init];
    MulitiplicationQuestion * question3 = [[MulitiplicationQuestion alloc] init];
    DivisionQuestion * question4 = [[DivisionQuestion alloc] init];
    NSArray * qarry = [NSArray arrayWithObjects: question1, question2, question3, question4, nil];
    NSInteger bound = [qarry count];
    int ramdon =  arc4random_uniform((uint32_t)bound);
    return [qarry objectAtIndex: ramdon];
}
@end
