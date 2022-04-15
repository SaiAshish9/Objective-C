# Objective-C
Categories, Extensions, Objects , Protocols, Inheritance, Anonymous Functions And Garbage Collection

```
#import <Foundation/Foundation.h>

@protocol PrintProtocolDelegate
- (void)processCompleted;

@end

@interface PrintClass :NSObject {
   id delegate;
}

- (void) printDetails;
- (void) setDelegate:(id)newDelegate;
@end

@implementation PrintClass
- (void)printDetails {
   NSLog(@"Printing Details");
   [delegate processCompleted];
}

- (void) setDelegate:(id)newDelegate {
   delegate = newDelegate;
}

@end

@interface SampleClass:NSObject<PrintProtocolDelegate>
- (void)startAction;

@end

@implementation SampleClass
- (void)startAction {
   PrintClass *printClass = [[PrintClass alloc]init];
   [printClass setDelegate:self];
   [printClass printDetails];
}

-(void)processCompleted {
   NSLog(@"Printing Process Completed");
}

@end

int main(int argc, const char * argv[]) {
   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
   SampleClass *sampleClass = [[SampleClass alloc]init];
   [sampleClass startAction];
   [pool drain];
   return 0;
}
```

# Categories

```
A category is a group of related methods for a class, and all of the methods defined in a category are available through the class as if they were defined in the main interface file. As an example, take the Person class that we've been working with throughout this book. If this were a large project, Person may have dozens of methods ranging from basic behaviors to interactions with other people to identity checking. The API might call for all of these methods to be available through a single class, but it's much easier for developers to maintain if each group is stored in a separate file. In addition, categories eliminate the need to recompile the entire class every time you change a single method, which can be a time-saver for very large projects.
```

```
#import "Person+Relations.h"
@implementation Person (Relations)
@interface Person (Relations)
```

## SubClass

```
@implementation A {}
@interface A : B

```

## Extensions

```
Extensions (also called class extensions) are a special type of category that requires their methods to be defined in the main implementation block for the associated class, as opposed to an implementation defined in a category. This can be used to override publicly declared property attributes. For example, it is sometimes convenient to change a read-only property to a read-write property within a class' implementation.
```

```
ship.h

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Ship : NSObject
@property (strong, readonly) Person *captain;
- (id)initWithCaptain:(Person *)captain;
@end
```

```
// Ship.m
#import "Ship.h"
 
 
// The class extension.
@interface Ship()
@property (strong, readwrite) Person *captain;
@end
 
@implementation Ship
@synthesize captain = _captain;
- (id)initWithCaptain:(Person *)captain {
    self = [super init];
    if (self) {
        [self setCaptain:captain];
    }
    return self;
}
@end
```

https://code.tutsplus.com/tutorials/objective-c-succinctly-categories-and-extensions--mobile-22016
