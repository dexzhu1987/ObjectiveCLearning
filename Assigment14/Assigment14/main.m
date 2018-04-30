//
//  main.m
//  Assigment14
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            NSString *input = [InputHandler getUserInputWithPrompt:@"Type \"rool\" or \"r\""];
            if ([input isEqualToString:@"roll"] || [input isEqualToString:@"r"]){
                
            }
        }
        
        
    }
    return 0;
}
