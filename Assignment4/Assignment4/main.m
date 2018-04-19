//
//  main.m
//  Assignment4
//
//  Created by dexunzhu on 2018-04-18.
//  Copyright © 2018 dexunzhu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"
#import "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow ID - print out the details with that ID\nfind name/email - print out the details contained that email(email)\nhistory - last three entries\nquit - Exit Application\n>>>> ";
        ContactList *list = [[ContactList alloc]init];
        
        //REPL = Read Evaluate Print Loop;
        BOOL isOn = YES;
        while (isOn) {
            NSString *input = [InputHandler getUserInputWithPrompt:menu];
            NSString *command = @"";
            NSString *searchitem = @"";
            if ([input length]>=5){
                command = [input substringToIndex:4];
                searchitem = [input substringFromIndex:5];
            }
            
            if ([input isEqualToString:@"quit"]){
                isOn = NO;
                break;
            } else if ([input isEqualToString:@"new"]){
                NSString * name = [InputHandler getUserInputWithPrompt:@"\nEnter the name: "];
                NSString * email = [InputHandler getUserInputWithPrompt:@"\nEnter the email: "];
                NSString * label = [InputHandler getUserInputWithPrompt:@"\nEnter the label of the phone number being added (work, home, mobile, etc): "];
                NSString * number = [InputHandler getUserInputWithPrompt:@"\nEnter the phone number: "];
                if ([list isExistedWithName: name AndEmail: email]){
                    NSLog(@"Error: this contact has been created");
                } else {
                    Contact * newContact = [[Contact alloc]initWithName:name AndEmail:email];
                    PhoneNumber * phonenumber = [[PhoneNumber alloc]initWithLabel:label AndNumber:number];
                    [newContact addPhoneNumber: phonenumber];
                    while (YES) {
                        NSString *ans = [InputHandler getUserInputWithPrompt:@"More phone number (y/n)"];
                        if ([ans isEqualToString:@"y"]){
                            NSString *label = [InputHandler getUserInputWithPrompt: @"\nEnter the label of the phone number being added (work, home, mobile, etc):  "];
                            NSString *number = [InputHandler getUserInputWithPrompt: @"\nEnter the phone number: "];
                            PhoneNumber *pnumber = [[PhoneNumber alloc] initWithLabel:label AndNumber:number];
                            [newContact addPhoneNumber: pnumber];
                        } else {
                            break;
                        }
                    }
                    [list addContacts: newContact];
                    [list addHistory: newContact];
                }
            } else if ([input isEqualToString:@"list"]){
                NSInteger index = 0;
                NSMutableArray *contactlist = [list contacts];
                for (Contact *contact in contactlist ){
                    NSMutableArray *phonelist = [contact numbers];
                    NSMutableString *phoneNumber = [[NSMutableString alloc] init];
                    for (PhoneNumber *number in phonelist){
                        NSString *label = [number label];
                        NSString *digit = [number number];
                        NSString *all = [NSString stringWithFormat:@"(%@ - %@)", label, digit];
                        [phoneNumber appendString: all];
                    }
                    NSLog(@"%ld: <%@> (%@) ---- [%@]", index, [contact name], [contact email], phoneNumber);
                    index++;
                }
            } else if ([command isEqualToString:@"show"]) {
                NSInteger searchindex = [searchitem integerValue];
                NSMutableArray *contactlist = [list contacts];
                if (searchindex < [contactlist count] && searchindex >=0){
                    Contact * contact = [contactlist objectAtIndex: searchindex];
//                    NSMutableArray *phonelist = [contact numbers];
//                    NSString * phoneNumber = @"";
//                    for (PhoneNumber *number in phonelist){
//                        NSString * fullPhone = [NSString stringWithFormat: @" (%@ - %@) ", [number label] ,[number number]];
//                        [phoneNumber stringByAppendingString: fullPhone];
//                    }
                    NSMutableArray *phonelist = [contact numbers];
                    NSMutableString *phoneNumber = [[NSMutableString alloc] init];
                    for (PhoneNumber *number in phonelist){
                        NSString *label = [number label];
                        NSString *digit = [number number];
                        NSString *all = [NSString stringWithFormat:@"(%@ - %@)", label, digit];
                        [phoneNumber appendString: all];
                    }
                    NSLog(@"%ld: <%@> (%@) ---- [%@]", searchindex, [contact name], [contact email], phoneNumber);
                } else {
                    NSLog(@"\nnot found");
                }
            } else if ([command isEqualToString:@"find"]){
                NSMutableArray *contactlist = [list contacts];
                NSInteger index = 0;
                BOOL print = NO;
                for (Contact *contact in contactlist ){
                    if ([searchitem isEqualToString: [contact name]] || [searchitem isEqualToString: [contact email]]){
                        NSMutableArray *phonelist = [contact numbers];
                        NSMutableString *phoneNumber = [[NSMutableString alloc] init];
                        for (PhoneNumber *number in phonelist){
                            NSString *label = [number label];
                            NSString *digit = [number number];
                            NSString *all = [NSString stringWithFormat:@"(%@ - %@)", label, digit];
                            [phoneNumber appendString: all];
                        }
                        NSLog(@"%ld: <%@> (%@) ---- [%@]", index, [contact name], [contact email], phoneNumber);
                        print = YES;
                    }
                    index++;
                }
                if (!print){
                    NSLog(@"\nnot found");
                }
            } else if ([input isEqualToString:@"history"]) {
                NSMutableArray *contactlist = [list history];
                for (Contact *contact in contactlist ){
                   NSMutableArray *phonelist = [contact numbers];
                   NSMutableString *phoneNumber = [[NSMutableString alloc] init];
                   for (PhoneNumber *number in phonelist){
                        NSString *label = [number label];
                        NSString *digit = [number number];
                        NSString *all = [NSString stringWithFormat:@"(%@ - %@)", label, digit];
                        [phoneNumber appendString: all];
                   }
                   NSLog(@" <%@> (%@) ---- [%@]", [contact name], [contact email], phoneNumber);
                }
            }
       
        }
    }
    return 0;
}

