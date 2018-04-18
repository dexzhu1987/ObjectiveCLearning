//
//  main.m
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>>>> ";
        
        //REPL = Read Evaluate Print Loop;
        BOOL isOn = YES;
        while (isOn) {
            
            NSString *input = [InputHandler getUserInputWithPrompt:menu];
            NSLog(@"Input was %@", input);
            
            if ([input isEqualToString:@"quit"]){
                isOn = NO;
                break;
            } else if ([input isEqualToString:@"new"]){
                NSString * name = [InputHandler getUserInputWithPrompt:@"Enter the name: "];
                NSString * email = [InputHandler getUserInputWithPrompt:@"Enter the email: "];
                Contact * newContact = [[Contact alloc]initWithName:name AndEmail:email];
            }
        }
       
        
    }
    return 0;
}

