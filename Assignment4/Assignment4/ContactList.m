//
//  ContactList.m
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype) init
{
    self = [super init];
    if (self)
    {
        _contacts = [[NSMutableArray alloc] init];
        _history = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void) addContacts:(Contact *) newContact
{
    [_contacts addObject: newContact];
}

- (void) addHistory:(Contact *) newContact
{
    if ([_history count] >= 3){
        [_history removeObjectAtIndex:0];
    }
    [_history addObject: newContact];
}

- (BOOL) isExistedWithName: (NSString *) name AndEmail: (NSString *) email
{
    NSMutableArray *contactlist = [self contacts];
    for (Contact *contact in contactlist ){
        if ([name isEqualToString: [contact name]] && [email isEqualToString: [contact email]]){
            return YES;
        }
    }
    return NO;
}

@end
