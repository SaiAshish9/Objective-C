//
//  Koala.h
//  objC
//
//  Created by Sai Ashish Darapureddy on 06/02/22.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *) talkToMe:(NSString *)myName;

-(void) performTrick;
-(void) makeSound;

@end

NS_ASSUME_NONNULL_END
