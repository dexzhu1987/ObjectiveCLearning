//
//  PhoneNumber.h
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject
@property (nonatomic, strong)  NSString* label;
@property (nonatomic, strong)  NSString* number;
- (instancetype) initWithLabel: (NSString *) label AndNumber: (NSString *) number;
@end
