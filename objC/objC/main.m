//
//  main.m
//  objC
//
//  Created by Sai Ashish Darapureddy on 05/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        It is used to remove unwanted objects and signals us when objects are no longer
//        needed
        
//        int char NSRange BOOL NSString NSLog NSMakeRange NSMutableString

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

        
        
    }
    return 0;
}
