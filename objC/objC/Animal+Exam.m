//
//  Animal+Exam.m
//  objC
//
//  Created by Sai Ashish Darapureddy on 06/02/22.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

-(BOOL) checkedByVet{
    return 1;
}

-(void) getShots{
    NSLog(@"%@ got its shots",self.name);
}

@end
