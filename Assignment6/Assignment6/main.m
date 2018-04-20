//
//  main.m
//  Assignment6
//
//  Created by dexunzhu on 2018-04-20.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "InputHandler.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *gc = [[GameController alloc] init];
        
        while (YES) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Enter 'r' to roll the dice: "];
            if ([input isEqualToString:@"r"]) {
                [gc rolltheRest];
                while ([gc MAX_ROLLS]> 0) {
                    NSString * hold = [InputHandler getUserInputWithPrompt:@"Enter a number to hold a die or 'q' to quit"];
                    if ([hold isEqualToString:@"q"])
                    {
                        break;
                    }
                    [gc holdDie:[hold integerValue]];
                }
            } else {
                break;
            }
        }
        [gc displayDice];
    }
    return 0;
}
