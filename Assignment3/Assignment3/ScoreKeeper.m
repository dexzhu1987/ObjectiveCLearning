//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init {
    if (self = [super init]) {
        _rights = 0;
        _wrongs = 0;
        
    }
    return self;
}

- (void) displayResult{
    CGFloat result = (float) _rights/ (_rights + _wrongs) * 100;
    NSLog(@"Score: %ld right, %ld wrong --------- %.2f %%", _rights, _wrongs,  result);
};
@end
