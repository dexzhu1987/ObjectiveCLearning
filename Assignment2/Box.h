//
//  Box.h
//  Assignment2
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;
- (instancetype) init: (float) height AndWidth: (float) width AndHeight: (float) length;
- (float) volume;
- (float) howManyTimesFit: (Box*) b1 ;
@end
