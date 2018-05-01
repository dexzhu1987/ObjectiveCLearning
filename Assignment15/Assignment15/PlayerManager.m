//
//  PlayerManager.m
//  Assignment15
//
//  Created by dexunzhu on 2018-05-01.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray array];
        _currentIndex = 0;
    }
    return self;
}

-(void) createPlayersWithNumber: (int)number
{
    for (int i=0; i<number; i++){
        NSString *name = [NSString stringWithFormat:@"player%d", (i+1)];
        Player *player = [[Player alloc]initWithName:name];
        [_players addObject:player];
    }
}

-(void) roll
{
    [[self currentPlayer]roll];
    NSLog(@"%@", [[self currentPlayer] output]);
    _currentIndex++;
}

-(Player *) currentPlayer
{
    NSUInteger totalPlayerNumber = [_players count];
    NSUInteger currentActualIndex = _currentIndex % totalPlayerNumber;
    return [_players objectAtIndex:currentActualIndex];
}


-(NSString *) score
{
    NSMutableString *scoreMute = [NSMutableString new];
    [scoreMute appendString:@"score:"];
    for (Player *player in _players){
        NSString *playerScore = [NSString stringWithFormat:@" %@", [player score]];
        [scoreMute appendString: playerScore];
    }
    return [NSString stringWithString:scoreMute];
}

-(BOOL) isThereAWinner
{
    for (Player *player in _players){
        if ([player gameOver]){
            return YES;
        }
    }
    return NO;
}

@end
