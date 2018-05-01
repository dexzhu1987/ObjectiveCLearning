//
//  PlayerManager.h
//  Assignment15
//
//  Created by dexunzhu on 2018-05-01.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic,strong) NSMutableArray *players;
@property (nonatomic,assign) NSInteger currentIndex;

-(void) createPlayersWithNumber: (int)number;
-(void) roll;
-(NSString *) score;
-(BOOL) isThereAWinner;
@end
