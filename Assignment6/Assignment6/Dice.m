//
//  Dice.m
//  Assignment6
//
//  Created by dexunzhu on 2018-04-20.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Dice.h"

@implementation Dice
-(instancetype)init
{
    self = [super init];
    if (self){
        _currentValue = 0;
        _isHeld = NO;
    }
    return self;
}


- (void) roll
{
    _currentValue = arc4random_uniform(6) +1 ;
}

- (NSString *) description
{
    //ctrl + commend + space = emoji
    NSString * die ;
    switch (_currentValue) {
        case 1:
            die = _isHeld ? @"[1️⃣]" : @"1️⃣";
            break;
        case 2:
            die = _isHeld ? @"[2️⃣]" : @"2️⃣";
            break;
        case 3:
            die = _isHeld ? @"[3️⃣]" : @"3️⃣";
            break;
        case 4:
            die = _isHeld ? @"[4️⃣]" : @"4️⃣";
            break;
        case 5:
            die = _isHeld ? @"[5️⃣]" : @"5️⃣";
            break;
        case 6:
            die = _isHeld ? @"[6️⃣]" : @"6️⃣";
            break;
        default:
            break;
    }
    return die;
}
@end
