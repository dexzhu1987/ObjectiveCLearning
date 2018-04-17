//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic, assign) NSInteger rights;
@property (nonatomic, assign) NSInteger wrongs;
- (void) displayResult;
- (instancetype)init;
@end
