#import "KBMGreeter.h"

@interface KBMGreeter ()

@property NSString *greeting;
@property NSFileHandle *input;
@property NSFileHandle *output;

@end

@implementation KBMGreeter

- (instancetype)init {
    return [self initWithGreeting:@"Hello"];
}

- (instancetype)initWithGreeting:(NSString *)greeting {
    if (self = [super init]) {
        self.greeting = greeting;
        self.userName = @"you beautiful thing";
        self.input = [NSFileHandle fileHandleWithStandardInput];
        self.output = [NSFileHandle fileHandleWithStandardOutput];
    }
    return self;
}

- (void)askForName {
    [self writeToOutput:@"What is your name?\n"];
    self.userName = [self readFromInput];
}

- (void)greet {
    NSString *personalizedGreeting = [NSString stringWithFormat:@"%@, %@!\n", self.greeting, self.userName];
    [self writeToOutput:personalizedGreeting];
}

- (void)writeToOutput:(NSString *)string {
    [self.output writeData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}

- (NSString *)readFromInput {
    NSData *inputData = [self.input availableData];
    NSString *inputString = [[NSString alloc] initWithData:inputData encoding:NSUTF8StringEncoding];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
}

@end
