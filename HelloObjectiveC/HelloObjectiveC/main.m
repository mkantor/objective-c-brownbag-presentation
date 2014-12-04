#import <Foundation/Foundation.h>
#import "KBMGreeter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        KBMGreeter *greeter = [[KBMGreeter alloc] initWithGreeting:@"Bonjour"];
        [greeter askForName];
        [greeter greet];
    }
    return 0;
}
