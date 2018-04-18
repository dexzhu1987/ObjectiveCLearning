//
//  ContactList.h
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h";

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;
@property (nonatomic, strong) NSMutableArray *history;
- (void) addContacts:(Contact *) newContact;
- (void) addHistory:(Contact *) newContact;
- (BOOL) isExistedWithName: (NSString *) name AndEmail: (NSString *) email ;
@end
