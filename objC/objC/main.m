//
//  main.m
//  objC
//
//  Created by Sai Ashish Darapureddy on 05/02/22.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Dog.h"

// stringWithFormat, uppercaseString,(int)[quote length], characterAtIndex, stringByAppendingString, rangeOfString, stringWithCapacity
// appendFormat, deleteCharactersInRange:NSMakeRange(0, 2), insertString:@" , Apple" atIndex:1
// replaceCharactersInRange:NSMakeRange(1, 1) withString:@"Orange", x[0], containsObject:@"A", indexOfObject:@"A",
// (int)[officeSupplies count]
// [NSMutableArray arrayWithCapacity:5];  addObject:@"A" insertObject:@"E" atIndex:2 removeObjectAtIndex:0
// removeObject removeObjectIdenticalTo:@"A" inRange:NSMakeRange(0,1)];
//  for(int i=0; i < [heroes count]; i++){
//        NSLog(@"%@",heroes[i]);
//    }
// objectAtIndex:0

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        It is used to remove unwanted objects and signals us when objects are no longer
//        needed
//        int char BOOL NSString NSMutableString NSLog NSRange NSMakeRange NSArray

        NSLog(@"Hello, World!");
        NSString *nothing = nil;
        NSLog(@"Location of nil : %p, ",nothing);
        NSLog(@"%@",nothing);
        NSString *quote = @"abcdsjskladhkjsadhkjhsad";
        NSLog(@"size %d",(int)[quote length]);
        NSLog(@"%c",[quote characterAtIndex:5]);
        char *name = "Sai";
        NSString *myName = [NSString stringWithFormat:@"%s",name];
//        immutable object
        BOOL isStringEqual = [quote isEqualToString:myName];
        printf("equal: %d\n",isStringEqual);
        const char *uCString = [[myName uppercaseString]UTF8String];
        printf("%s\n",uCString);
        NSString *wholeQuote = [quote stringByAppendingString:myName];
        NSRange searchResult = [wholeQuote rangeOfString:@"Sai"];
        if(searchResult.location == NSNotFound){
            NSLog(@"String not found");
        }else{
            printf("Sai is at index %lu and is %lu long\n",searchResult.location,searchResult.length);
        }
//        NSRange range = NSMakeRange(42, 1);
//        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Sai9" ]UTF8String];
//        printf("%s",newQuote);
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s","ABCDEF"];
        NSLog(@"%@",groceryList);
        [groceryList deleteCharactersInRange:NSMakeRange(0, 2)];
        NSLog(@"%@",groceryList);
        [groceryList insertString:@" , Apple" atIndex:1];
        NSLog(@"%@",groceryList);
        [groceryList replaceCharactersInRange:NSMakeRange(1, 1) withString:@"Orange"];
        NSLog(@"%@",groceryList);
        NSArray *officeSupplies = @[@"A",@"B",@"C"];
        NSLog(@"First: %@",officeSupplies[0]);
        NSLog(@"Office Supplies: %@",officeSupplies);
        BOOL containsItem = [officeSupplies containsObject:@"A"];
        NSLog(@"Need Pencils : %d",containsItem);
        NSLog(@"Total : %d",(int)[officeSupplies count]);
        NSLog(@"Index of A is at %lu",(unsigned long)[officeSupplies indexOfObject:@"A"]);
       NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
       [heroes addObject:@"A"];
       [heroes addObject:@"B"];
       [heroes addObject:@"C"];
       [heroes addObject:@"D"];
       [heroes insertObject:@"E" atIndex:2];
       NSLog(@"%@", heroes);
       [heroes removeObject:@"D"];
       [heroes removeObjectAtIndex:0];
       [heroes removeObjectIdenticalTo:@"A" inRange:NSMakeRange(0,1)];
       for(int i=0; i < [heroes count]; i++){
           NSLog(@"%@",heroes[i]);
       }
       Animal *dog = [[Animal alloc] init];
       [dog getInfo];
       NSLog(@"The dogs name is %@", [dog name]);
       [dog setName:@"Spot"];
       Animal *cat = [[Animal alloc]initWithName:@"Meow"];
       NSLog(@"%@",cat.name);
       NSLog(@"180 lbs = %.2f kg", [dog weightInKg:180]);
       NSLog(@"3 + 5 = %d", [dog getSum:3 nextNumber:5 ]);
       NSLog(@"%@", [dog talkToMe:@"Derek"]);
       Koala *herbie = [[Koala alloc]initWithName:@"Herbie"];
       NSLog(@"%@",[herbie talkToMe:@"Derek"]);
       NSLog(@"Did %@ receive shots: %d",herbie.name,[herbie checkedByVet]);
       [herbie getShots];
       [dog getInfo];
       [herbie lookCute];
       [herbie performTrick];
       float (^getArea) (float height, float width);
       getArea = ^float(float width, float height){
           return width * height;
       };
       NSLog(@"Area of 3 width and 50 height: %.1f", getArea(3,50));
        enum Ratings{
            Poor = 1,
            Ok = 2,
            great = 5
        };
        enum Ratings matrixRating = great;
        NSLog(@"Matrix : %u",matrixRating);
        Dog *grover = [[Dog alloc]initWithName:@"Grover"];
        NSArray *animals = [[NSArray alloc]initWithObjects:herbie,grover, nil];
        id object1 = [animals objectAtIndex:0];
        id object2 = [animals objectAtIndex:1];
        [object1 makeSound];
        [object2 makeSound];
    }
    return 0;
}
