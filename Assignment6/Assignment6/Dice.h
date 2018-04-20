//
//  Dice.h
//  Assignment6
//
//  Created by dexunzhu on 2018-04-20.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property (nonatomic, assign) int currentValue;
@property (nonatomic, assign) BOOL isHeld;
- (void) roll;
@end
