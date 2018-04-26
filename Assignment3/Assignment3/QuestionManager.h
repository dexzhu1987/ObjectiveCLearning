//
//  QuestionManager.h
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddidtionalQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic,strong) NSMutableArray *questions;

-(instancetype) init;
-(void) addQuestion: (AddidtionalQuestion *) question;
+ (QuestionManager *) manager;
@end
