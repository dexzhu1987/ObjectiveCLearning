//
//  Player.m
//  Assigment14
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)initWithName: (NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
        _currentSquare = 0;
        _gameLogic = @{ @4 : @14, @9 : @31, @17 : @7, @20 : @38, @28 : @84, @40 : @59, @51 : @67, @64 : @60, @63 : @81, @89 : @26, @95 : @73, @99 : @78 };
        _gameOver = NO;
    }

    return self;
}

- (void) roll
{
    int random = arc4random_uniform(6)+1;
    NSLog(@"%@ rolled a %d",_name, random);
    _currentSquare = _currentSquare + random;
    NSArray *keys = [_gameLogic allKeys];
    for (NSNumber *key in keys){
        NSInteger keyInt = [key integerValue];
        if (_currentSquare == keyInt){
            NSInteger value = [[_gameLogic objectForKey:key] integerValue];
            if (_currentSquare < value){
                _output = [NSString stringWithFormat:@"Stairway to heaven.\n%@ jumped from %ld to %ld", _name, _currentSquare, value];
                _currentSquare = value;
            } else {
                _output = [NSString stringWithFormat:@"Snake bit your feet.\n%@ slipped from %ld to %ld", _name,  _currentSquare, value];
                _currentSquare = value;
            }
            break;
        } else {
            _output = [NSString stringWithFormat:@"%@ landed on %ld", _name,  _currentSquare];
        }
    }
    if (_currentSquare>=100){
        _gameOver = YES;
    }
    
}

- (NSString*) score
{
    return [NSString stringWithFormat:@"%@: %ld", _name, _currentSquare];
}

@end
