//
//  Box.m
//  Assignment2
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "Box.h"

@interface Box()

@end

@implementation Box{
    //private instance variables;
}

- (instancetype) init: (float) height AndWidth: (float) width AndHeight: (float) length {
    if ((self = [super init])) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) volume  {
    // this.height (Java) = _height;
    // this.getheight() (Java) = self.height;
    float volume = _length * _width *  _height;
    return volume;
}

- (float) howManyTimesFit: (Box*) b1 {
    float times;
    float b1Volume = [b1 volume];
    float selfVolume = [self volume];
    if (b1Volume >= selfVolume){
        times = b1Volume/selfVolume;
    } else {
        times = selfVolume/b1Volume;
    }
    return times;
}

@end
