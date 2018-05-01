//
//  main.m
//  Assignment15
//
//  Created by dexunzhu on 2018-05-01.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"WELCOME TO SNAKES & LADDERS");
        PlayerManager *pm = [PlayerManager new];
        BOOL gameOn = YES;
        while (gameOn) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Enter the number of player"];
            int playerNumber = [input intValue];
            if (playerNumber!=nil && playerNumber>0){
                [pm createPlayersWithNumber: playerNumber];
                while (YES) {
                    NSString *input = [[InputHandler getUserInputWithPrompt:@"Type \"roll\" or \"r\" (\"quit\" to quit)"] lowercaseString];  
                    if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]){
                        [pm roll];
                        NSLog(@"%@", [pm score]);
                        if ([pm isThereAWinner]){
                            [[pm players]removeAllObjects];
                            [pm setCurrentIndex: 0];
                            break;
                        }
                    } else if ([input isEqualToString:@"quit"] ){
                        NSString *input = [[InputHandler getUserInputWithPrompt:@"Please confirm you want to quit or restart (type \"quit\" or \"restart\")"] lowercaseString];
                        if ([input isEqualToString:@"restart"] ){
                            [[pm players]removeAllObjects];
                            [pm setCurrentIndex: 0];
                            break;
                        } else if ([input isEqualToString:@"quit"]) {
                            gameOn = NO;
                            NSLog(@"Thank you for playing");
                            break;
                        }
                    }
                }
            }
            continue;
        }
        
      
        
        
    }
    return 0;
}
