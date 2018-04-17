//
//  main.m
//  Assignment2
//
//  Created by dexunzhu on 2018-04-17.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box * b1 = [[Box alloc]init: 5.0 AndWidth:5.0 AndHeight:5.0];
        Box * b2 = [[Box alloc]init: 10.0 AndWidth:10.0 AndHeight:10.0];
        NSLog(@"Volume of b1 is %.2f", [b1 volume]);
        NSLog(@"Volume of b2 is %.2f", [b2 volume]);
        NSLog(@"b1 can fit into b2 for %.2f times.",[b1 howManyTimesFit:b2]);
    }
    return 0;
}
