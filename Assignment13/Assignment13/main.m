//
//  main.m
//  Assignment13
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please enter your sentence:");
        NSString *inputString = [InputHandler getUserInputWithPrompt:@"> "];
        NSLog(@"The pig latin version is '%@'", [PigLatin stringByPigLatinization:inputString]);
        
    }
    return 0;
}
