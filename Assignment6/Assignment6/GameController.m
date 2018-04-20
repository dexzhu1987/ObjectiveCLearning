//
//  GameController.m
//  Assignment6
//
//  Created by dexunzhu on 2018-04-20.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype) init
{
    self = [super init];
    if (self)
    {
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        _dice = [NSMutableArray arrayWithArray:@[d1, d2, d3, d4,d5]];
        _MAX_ROLLS = 5;
    }
    return self;
}

- (void) holdDie: (NSInteger) dieNumber
{
    if (dieNumber > 0 && dieNumber < 6){
        Dice *die = [_dice objectAtIndex: dieNumber -1];
        if ([die isHeld]){
            [die setIsHeld:NO];
        } else{
            [die setIsHeld:YES];
        }
        [self displayDice];
    } else {
        NSLog(@"Wrong Die Number");
    }
}

- (void) rolltheRest
{
    if (_MAX_ROLLS >0) {
        for (Dice *dice in _dice){
            if (![dice isHeld]){
                [dice roll];
            }
        }
        _MAX_ROLLS--;
        [self displayDice];
    }
    
    if (_MAX_ROLLS == 0){
        for (Dice *dice in _dice){
            if (![dice isHeld]){
                [dice setIsHeld:YES];
            }
        }
        [self displayDice];
    }
    
    if (_MAX_ROLLS < 0){
        NSLog(@"Game Over. No more rolls for you!");
    }
    
}

-(void) displayDice
{
    NSLog(@"%@ %@ %@ %@ %@", _dice[0], _dice[1], _dice[2], _dice[3], _dice[4]);
    int score = 0;
    for (Dice *dice in _dice){
        if ([dice isHeld]){
            score += [dice currentValue];
        }
    }
    NSLog(@"Current Score : %d", score);
    NSLog(@"Remiaing Rolls : %ld", _MAX_ROLLS);
}


@end
