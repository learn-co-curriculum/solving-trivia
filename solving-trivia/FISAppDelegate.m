//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)solveTrivia
{
    NSDictionary *statesAndCapitals = @{@"Montgomery"     : @"Alabama",
                                        @"Juneau"         : @"Alaska",
                                        @"Phoenix"        : @"Arizona",
                                        @"Little Rock"    : @"Arkansas",
                                        @"Sacramento"     : @"California",
                                        @"Denver"         : @"Colorado",
                                        @"Hartford"       : @"Connecticut",
                                        @"Dover"          : @"Delaware",
                                        @"Tallahassee"    : @"Florida",
                                        @"Pierre"         : @"South Dakota",
                                        @"Atlanta"        : @"Georgia",
                                        @"Honolulu"       : @"Hawaii",
                                        @"Boise"          : @"Idaho",
                                        @"Springfield"    : @"Illinois",
                                        @"Indianapolis"   : @"Indiana",
                                        @"Des Moines"     : @"Iowa",
                                        @"Topeka"         : @"Kansas",
                                        @"Frankfort"      : @"Kentucky",
                                        @"Baton Rouge"    : @"Louisiana",
                                        @"Trenton"        : @"New Jersey",
                                        @"Augusta"        : @"Maine",
                                        @"Annapolis"      : @"Maryland",
                                        @"Boston"         : @"Massachusetts",
                                        @"Lansing"        : @"Michigan",
                                        @"Saint Paul"     : @"Minnesota",
                                        @"Jackson"        : @"Mississippi",
                                        @"Jefferson City" : @"Missouri",
                                        @"Helena"         : @"Montana",
                                        @"Lincoln"        : @"Nebraska",
                                        @"Carson City"    : @"Nevada",
                                        @"Concord"        : @"New Hampshire",
                                        @"Santa Fe"       : @"New Mexico",
                                        @"Albany"         : @"New York",
                                        @"Raleigh"        : @"North Carolina",
                                        @"Bismarck"       : @"North Dakota",
                                        @"Columbus"       : @"Ohio",
                                        @"Oklahoma City"  : @"Oklahoma",
                                        @"Salem"          : @"Oregon",
                                        @"Harrisburg"     : @"Pennsylvania",
                                        @"Providence"     : @"Rhode Island",
                                        @"Columbia"       : @"South Carolina",
                                        @"Nashville"      : @"Tennessee",
                                        @"Austin"         : @"Texas",
                                        @"Salt Lake City" : @"Utah",
                                        @"Montpelier"     : @"Vermont",
                                        @"Richmond"       : @"Virginia",
                                        @"Olympia"        : @"Washington",
                                        @"Charleston"     : @"West Virginia",
                                        @"Madison"        : @"Wisconsin",
                                        @"Cheyenne"       : @"Wyoming" };
    
    for (NSString *capital in statesAndCapitals)
    {
        //remove case from the names
        NSString *lowerCaseCapital = [capital lowercaseString];
        NSString *lowerCaseState = [[statesAndCapitals valueForKey:capital] lowercaseString];
        
        //remove any spaces so as not to confuse the comparisons
        NSString *lowerCaseCapitalNoSpaces = [lowerCaseCapital stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *lowerCaseStateNoSpaces = [lowerCaseState stringByReplacingOccurrencesOfString:@" " withString:@""];
        
        //create an array of the characters in the capital we're currently looking at
        NSMutableArray *capitalCharacters = [[NSMutableArray alloc] init];
        for (NSUInteger i = 0; i < lowerCaseCapitalNoSpaces.length; i++)
        {
            unichar oneChar = [lowerCaseCapitalNoSpaces characterAtIndex: i];
            [capitalCharacters addObject:[NSString stringWithFormat:@"%c", oneChar]];
        }
        
        //create and array of the characters in the state we're currently looking at
        NSMutableArray *stateCharacters = [[NSMutableArray alloc] init];
        for (NSUInteger i = 0; i < lowerCaseStateNoSpaces.length; i++)
        {
            unichar oneChar = [lowerCaseStateNoSpaces characterAtIndex: i];
            [stateCharacters addObject:[NSString stringWithFormat:@"%c", oneChar]];
        }
        
        //compare the characters from each array to determine if there are overlaps
        for (NSUInteger i = 0; i < [capitalCharacters count]; i++)
        {
            NSString *character = capitalCharacters[i];
            if ([stateCharacters containsObject:character])
            {
                break;
            }
            
            if (![stateCharacters containsObject:character] && i == [capitalCharacters count] - 1)
            {
                return [statesAndCapitals valueForKey:capital];
            }
        }
    }
    
    return nil;
}

@end
