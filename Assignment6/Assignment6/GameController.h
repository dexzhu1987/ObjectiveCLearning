//
//  GameController.h
//  Assignment6
//
//  Created by dexunzhu on 2018-04-20.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray *dice;
@property (nonatomic, assign) NSInteger MAX_ROLLS;
- (void) rolltheRest;
- (void) holdDie: (NSInteger) dieNumber;
- (void) displayDice;
@end
