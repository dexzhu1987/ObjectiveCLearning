//
//  main.m
//  Assigment14
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player = [Player new];
        while (YES) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Type \"roll\" or \"r\""];
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]){
                [player roll];
                NSLog(@"%@",[player output]);
                if ([player gameOver]){
                    NSLog(@"Game Over");
                    break;
                }
            }
        }
        
        
    }
    return 0;
}
