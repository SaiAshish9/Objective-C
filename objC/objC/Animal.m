//
//  Animal.m
//  objC
//  Created by Sai Ashish Darapureddy on 06/02/22.
//
#import "Animal.h"
#import "Animal+Vet.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Sai";
    }
    return self;
}

- (instancetype)initWithName:(NSString *)defaultName
{
    self = [super init];
    if (self) {
        self.name = defaultName;
    }
    return self;
}

-(void) getInfo{
NSLog(@"Random");
[self getExamResults];
}

-(float) weightInKg:(float)weightInLbs {
    return weightInLbs * 0.4535;
}

-(int) getSum:(int)num1 nextNumber:(int)num2 {
    return num1 + num2;
}

-(NSString *)talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"Hello %@", myName];
    return response;
}

-(void) makeSound{
    NSLog(@"Grrrr");
}

@end
