//
//  main.m
//  Assignment1
//
//  Created by dexunzhu on 2018-04-16.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

void menu() {
    NSLog(@"");
    NSLog(@"");
    NSLog(@"String Converter!");
    NSLog(@"1. Uppercase");
    NSLog(@"2. Lowercase");
    NSLog(@"3. Numberize");
    NSLog(@"4. Canadianize");
    NSLog(@"5. Respond");
    NSLog(@"6. De-space-it");
    
}

NSString * getUserInput(NSString *prompt) {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
            menu();
            NSString *option = getUserInput(@"Select the following Option: ");
            NSString *userInput = getUserInput(@"Enter your string: ");
            
            if ([option isEqualToString:@"1"]) {
                NSLog(@"%@", [userInput uppercaseString]);
            } else if ([option isEqualToString:@"2"]) {
                NSLog(@"%@", [userInput lowercaseString]);
            } else if ([option isEqualToString:@"3"]) {
                NSScanner* scan = [NSScanner scannerWithString:userInput];
                int val;
                if ([scan scanInt:&val] && [scan isAtEnd]) {
                    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
                    f.numberStyle = NSNumberFormatterDecimalStyle;
                    NSNumber *myNumber = [f numberFromString:userInput];
                    NSLog(@"Converted to a number %@", myNumber);
                    
                } else {
                    NSLog(@"This is not a valid input. Enter a number.");
                }
            } else if ([option isEqualToString:@"4"]){
                NSLog(@"%@",[userInput stringByAppendingString:@", eh?"]);
            } else if ([option isEqualToString:@"5"]) {
                if([[userInput substringFromIndex:[userInput length] - 1] isEqualToString:@"?"]) {
                    NSLog(@"I don't know");
                } else if([[userInput substringFromIndex:[userInput length] - 1] isEqualToString:@"!"]) {
                    NSLog(@"Whoa, calm down!");
                }
            } else if ([option isEqualToString:@"6"]) {
                NSLog(@"%@", [userInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            } else {
                NSLog(@"Wrong input, please enter a number from 1 to 6");
            }
        }
    }
    return 0;
}
