#import <Foundation/Foundation.h>

/**
 * The KBMGreeter class is responsible for greeting users. Note that it is
 * mutable and handles I/O directly.
 */
@interface KBMGreeter : NSObject

/**
 * Name of the user to greet.
 */
@property NSString *userName;

/**
 * Returns an initialized KBMGreeter object with the specified greeting.
 *
 * @param greeting How to greet the user.
 * @return An initialized KBMGreeter object.
 */
- (instancetype)initWithGreeting:(NSString *)greeting;

/**
 * Prompts the user for their name and reads it directly from standard input.
 */
- (void)askForName;

/**
 * Prints the greeting to standard output.
 */
- (void)greet;

@end
