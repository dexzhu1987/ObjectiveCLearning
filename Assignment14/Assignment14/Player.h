//
//  Player.h
//  Assigment14
//
//  Created by dexunzhu on 2018-04-30.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, strong) NSDictionary *gameLogic;
@property (nonatomic, strong) NSString *output;
@property (nonatomic, assign) BOOL gameOver;
- (void) roll;
@end
