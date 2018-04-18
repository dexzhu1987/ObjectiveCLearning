//
//  Contact.h
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonactonmic, strong) NSString* name;
@property (nonactonmic, strong) NSString* email;
- (instancetype) initWithName: (NSString *) name AndEmail: (NSString *) email;

@end
