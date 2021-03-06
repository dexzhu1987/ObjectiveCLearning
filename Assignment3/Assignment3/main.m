//
//  main.m
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "AddidtionalQuestion.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameon = YES;
        NSLog(@"Maths!!");
        ScoreKeeper *sk = [[ScoreKeeper alloc] init];
        QuestionManager *qm = [QuestionManager new];
        
        while (gameon) {

            AddidtionalQuestion *q1 = [AddidtionalQuestion new];
            NSString *userInput = [InputHandler getUserInputWithPrompt: [q1 question]];
           
           
            
            if ([userInput isEqualToString:@"quit"]){
                gameon = NO;
                break;
            }
            
            NSInteger userInterger =  [userInput integerValue];
            if (userInterger == [q1 answer]){
                NSLog(@"Right!");
                [sk setRights: [sk rights] + 1];
            }else{
                NSLog(@"Wrong!");
                [sk setWrongs: [sk wrongs] + 1];
            }
            
            [qm addQuestion: q1];
            
            [sk displayResult];

        }
        
        
    }
    return 0;
}
