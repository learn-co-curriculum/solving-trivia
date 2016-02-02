//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)solveTrivia {
    NSDictionary *statesAndCapitals =   @{  @"Alabama" : @"Montgomery",
                                            @"Alaska" : @"Juneau",
                                            @"Arizona" : @"Phoenix",
                                            @"Arkansas" : @"Little Rock",
                                            @"California" : @"Sacramento",
                                            @"Colorado" : @"Denver",
                                            @"Connecticut" : @"Hartford",
                                            @"Delaware" : @"Dover",
                                            @"Florida" : @"Tallahassee",
                                            @"Georgia" : @"Atlanta",
                                            @"Hawaii" : @"Honolulu",
                                            @"Idaho" : @"Boise",
                                            @"Illinois" : @"Springfield",
                                            @"Indiana" : @"Indianapolis",
                                            @"Iowa" : @"Des Moines",
                                            @"Kansas" : @"Topeka",
                                            @"Kentucky" : @"Frankfort",
                                            @"Louisiana" : @"Baton Rouge",
                                            @"Maine" : @"Augusta",
                                            @"Maryland" : @"Annapolis",
                                            @"Massachusetts" : @"Boston",
                                            @"Michigan" : @"Lansing",
                                            @"Minnesota" : @"St. Paul",
                                            @"Mississippi" : @"Jackson",
                                            @"Missouri" : @"Jefferson City",
                                            @"Montana" : @"Helena",
                                            @"Nebraska" : @"Lincoln",
                                            @"Nevada" : @"Carson City",
                                            @"New Hampshire" : @"Concord",
                                            @"New Jersey" : @"Trenton",
                                            @"New Mexico" : @"Santa Fe",
                                            @"New York" : @"Albany",
                                            @"North Carolina" : @"Raleigh",
                                            @"North Dakota" : @"Bismarck",
                                            @"Ohio" : @"Columbus",
                                            @"Oklahoma" : @"Oklahoma City",
                                            @"Oregon" : @"Salem",
                                            @"Pennsylvania" : @"Harrisburg",
                                            @"Rhode Island" : @"Providence",
                                            @"South Carolina" : @"Columbia",
                                            @"South Dakota" : @"Pierre",
                                            @"Tennessee" : @"Nashville",
                                            @"Texas" : @"Austin",
                                            @"Utah" : @"Salt Lake City",
                                            @"Vermont" : @"Montpelier",
                                            @"Virginia" : @"Richmond",
                                            @"Washington" : @"Olympia",
                                            @"West Virginia" : @"Charleston",
                                            @"Wisconsin" : @"Madison",
                                            @"Wyoming" : @"Cheyenne" };
    
    NSString *state = @"";
    
    
    for (NSString *key in statesAndCapitals) {
    BOOL hasMatchingLetter = NO;
        
        //Create array of state name letters
        NSMutableArray *stateNameInArrayOfLetters = [[NSMutableArray alloc] init];
        NSString *noCaseState = [key lowercaseString];
        
        for (NSUInteger i=0; i<noCaseState.length; i++) {
            NSString *eachChar = [NSString stringWithFormat:@"%c",[noCaseState characterAtIndex:i]];
            [stateNameInArrayOfLetters addObject:eachChar];
        }
        
        //Create array of capital name letters
        NSString *noCaseCapital = [statesAndCapitals[key] lowercaseString];
        
        NSMutableArray *capitalNameInArrayOfLetters = [[NSMutableArray alloc] init];
        for (NSUInteger i=0; i<noCaseCapital.length; i++) {
            NSString *eachChar = [NSString stringWithFormat:@"%c",[noCaseCapital characterAtIndex:i]];
            [capitalNameInArrayOfLetters addObject:eachChar];
        }
        
        //Compare letters:
        for (NSString *eachCharInState in stateNameInArrayOfLetters) {
            for (NSString *eachCharInCapital in capitalNameInArrayOfLetters){
                if ([eachCharInState isEqualToString:eachCharInCapital]) {
                    hasMatchingLetter=YES;
                }
            }
        }
        
        if (hasMatchingLetter == NO) {
            state=key;
        }

    }

    

    return state;
}

@end
