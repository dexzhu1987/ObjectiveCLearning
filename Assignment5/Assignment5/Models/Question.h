//
//  AdditionalQuestion.h
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, copy) NSString* question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;

- (instancetype)init;
- (NSInteger) answer;
- (NSTimeInterval) timetoAnswer;
- (void) generateQuestion;

@end
