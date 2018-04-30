//
//  PigLatin.h
//  Assignment13
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PigLatin : NSObject
+ (NSString *)stringByPigLatinization: (NSString *) string;
+ (BOOL) isItVowelForChar: (char) letter;
@end
