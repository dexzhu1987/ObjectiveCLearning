//
//  main.m
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionalQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

//NSString * getUserInput(NSString *prompt) {
//    char inputChars[255];
//    NSLog(@"%@", prompt);
//    fgets(inputChars, 255, stdin);
//    NSString *inputString = [NSString stringWithUTF8String:inputChars];
//    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameon = YES;
        NSLog(@"Maths!!");
        ScoreKeeper *sk = [[ScoreKeeper alloc]init];
        while (gameon) {
            AdditionalQuestion *q1 = [[AdditionalQuestion alloc]init];
            NSString *userInput = [InputHandler getUserInput: [q1 question]];
            
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
        }
        
         [sk displayResult];
    }
    return 0;
}
