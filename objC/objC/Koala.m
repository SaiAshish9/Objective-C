//
//  Koala.m
//  objC
//
//  Created by Sai Ashish Darapureddy on 06/02/22.
//

#import "Koala.h"

@implementation Koala

-(NSString *)talkToMe:(NSString *)myName{
    NSString *response = [NSString stringWithFormat:@"Hello %@ says %@", myName, self.name];
    return response;
}

-(void) performTrick{
    NSLog(@"%@ perfoms", self.name);
}

-(void) makeSound{
    NSLog(@"%@ sounds", self.name);
}

@end
