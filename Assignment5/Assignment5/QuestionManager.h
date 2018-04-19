//
//  QuestionManager.h
//  Assignment5
//
//  Created by dexunzhu on 2018-04-19.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic,strong) NSMutableArray *questions;

-(instancetype) init;
-(void) addQuestion: (Question *) question;
+ (QuestionManager *) manager;
- (NSString*) timeOutput;
@end
