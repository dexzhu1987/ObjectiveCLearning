//
//  main.m
//  ObjectiveCPractive
//
//  Created by Derrick on 2018-04-16.
//  Copyright © 2018 com.Derrick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Person.h"
// 1. Data Types
// 2. Variables (static type)
// 3. Flow Controls (exactly the same as C)
//    - if else
//    - loop
// 4. Function(Method)
// 5. Class (Properties - instance var, getter, setter)
// 6. Public vs Private

int addTwo(int a, int b) {
    return a + b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        Person *p1 = (Person*) malloc(sizeof(Person));
        Person *p1 = [[Person alloc] initWithName:@"Elif" AndAge:28];
        Person *p2 = [[Person alloc] initWithName:@"Haruka" AndAge:26];
        Person *p3 = [[Person alloc] initWithName:@"Hunter" AndAge:26];
        int age = 18;
//        NSLog(@"%@ can date someone of age %@", [p3 name], [p3 canDateOfAge:age]);
        
        int a = [p1 getAge];
        [p2 setAge:27];
        [Person printSomething];
        NSLog(@"Elif is %d years old", a);
        NSLog(@"Haruka is %d years old", [p2 getAge]);
        
        NSString *myStr = @"Hello World";
        [myStr uppercaseString];
        [myStr lowercaseString];
        [myStr length];
        [myStr substringFromIndex:2];
        NSString *sub = [myStr substringWithRange: NSMakeRange(0, 3)];
        NSLog(@"%@", sub);
        
        // CMD + Shift + k: Clean
        // CMD + b: Build
        // CMD + r: Run
        
        
//        int result = addTwo(10, 20);
//        // Practice.addNumberWithAnotherNumber(10, 20)
//        int result2 = [Practice addNumber:10 withAnotherNumber:20];
//
//        int x = 10;
//        if (x >= 10) {
//            NSLog(@"x is greater than or equal to 10");
//        } else if (x < 10 && x > 5) {
//            NSLog(@"5 < x < 10");
//        } else {
//            NSLog(@"Something else...");
//        }
//        NSString *objString = @"This is Obj-C String";
//        NSLog(@"%@\n", objString);
    }
    return 0;
}
