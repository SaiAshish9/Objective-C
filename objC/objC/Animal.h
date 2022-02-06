//
//  Animal.h
//  objC
//
//  Created by Sai Ashish Darapureddy on 06/02/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

//@property (readonly) NSString *name;
@property NSString *name;
@property NSString *favFood;
@property NSString *sound;
@property float weight;

-(instancetype) initWithName:(NSString*) defaultName;
-(void) getInfo;
-(float) weightInKg;
-(NSString *) talkToMe: (NSString *) myName;
-(int) getSum: (int) num1
   nextNumber: (int) num2;


@end

NS_ASSUME_NONNULL_END
