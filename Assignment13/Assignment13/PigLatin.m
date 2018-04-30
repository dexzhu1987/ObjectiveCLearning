//
//  PigLatin.m
//  Assignment13
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "PigLatin.h"


@implementation PigLatin

+ (BOOL) isItVowelForChar: (char) letter {
    NSString *vowel = @"aeiou";
    for (int i=0; i<[vowel length]; i++){
        if (letter == [vowel characterAtIndex:i]){
            return true;
        }
    }
    return false;
}

+ (NSString *)stringByPigLatinization: (NSString *) string{
    NSArray *commandWords = [string componentsSeparatedByString:@" "];
    NSMutableArray *changedWords = [NSMutableArray new];
    for (NSString *word in commandWords){
        if (![self isItVowelForChar:[word characterAtIndex:0]]){
            int position  = 0;
            for (int i= 0; i < [word length]; i++) {
                char letter = [word characterAtIndex:i];
                if ([self isItVowelForChar:letter]) {
                    position = i;
                    break;
                }
            }
            
            NSString *firstunmodified =[word substringFromIndex:(position)];
            NSString *upperFirst = [NSString stringWithFormat:@"%@%@",[[firstunmodified substringToIndex:1] capitalizedString],[firstunmodified substringFromIndex:1]] ;
            
            NSString *secondlower = [[word substringToIndex:position] lowercaseString];
            NSString *loweray = [NSString stringWithFormat:@"%@%@",secondlower,@"ay"] ;
            
            NSString *combined =  [NSString stringWithFormat:@"%@%@",upperFirst,loweray] ;
            [changedWords addObject: combined];
            
        } else {
            
            NSMutableString *whole = [NSMutableString new];
            NSString *upperFirst = [NSString stringWithFormat:@"%@%@",[[word substringToIndex:1] capitalizedString],[word substringFromIndex:1]] ;
            [whole appendString:upperFirst];
            [whole appendString: @"way"];
            [changedWords addObject:whole];
            
        }
    }
    return [changedWords componentsJoinedByString:@" "];
}



@end
