//
//  QuestionFactory.h
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubtractionQuestion.h"
#import "AddidtionalQuestion.h"
#import "MulitiplicationQuestion.h"
#import "DivisionQuestion.h"

@interface QuestionFactory : NSObject

-(Question *) generateRandomQuestion;

@end
