//
//  Player.m
//  Assigment14
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{ @4 : @14, @9 : @31, @17 : @7, @20 : @38, @28 : @84, @40 : @59, @51 : @67, @64 : @60, @63 : @81, @89 : @26, @95 : @73, @99 : @78 };
    }

    return self;
}

- (void) roll
{
    int random = arc4random_uniform(7)+1;
    NSLog(@"player rolled a %d", random);
    _currentSquare = _currentSquare + random;
    NSArray *keys = [_gameLogic allKeys];
    NSArray *values = [_gameLogic allValues];
    for (NSNumber *key in keys){
        int keyInt = [key intValue];
        if (_currentSquare == keyInt){
            
        }
    }
    
}
@end
