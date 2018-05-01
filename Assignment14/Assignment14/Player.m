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
        _gameOver = NO;
    }

    return self;
}

- (void) roll
{
    int random = arc4random_uniform(6)+1;
    NSLog(@"player rolled a %d", random);
    _currentSquare = _currentSquare + random;
    NSArray *keys = [_gameLogic allKeys];
    for (NSNumber *key in keys){
        NSInteger keyInt = [key integerValue];
        if (_currentSquare == keyInt){
            NSInteger value = [[_gameLogic objectForKey:key] integerValue];
            if (_currentSquare < value){
                _output = [NSString stringWithFormat:@"Stairway to heaven.\nplayer jumped from %ld to %ld", _currentSquare, value];
                _currentSquare = value;
            } else {
                _output = [NSString stringWithFormat:@"Snake bit your feet.\nplayer slipped from %ld to %ld", _currentSquare, value];
                _currentSquare = value;
            }
            break;
        } else {
            _output = [NSString stringWithFormat:@"player landed on %ld", _currentSquare];
        }
    }
    if (_currentSquare>=100){
        _gameOver = YES;
    }
    
}
@end
