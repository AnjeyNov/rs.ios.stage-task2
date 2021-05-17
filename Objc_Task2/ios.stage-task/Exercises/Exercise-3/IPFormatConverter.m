#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if(numbersArray == nil || [numbersArray isEqual:@[]]) {
        return @"";
    }
    NSMutableString *result = [NSMutableString new];
    int counter = 0;
    for (NSNumber *number in numbersArray) {
        if(number.intValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
        if(number.intValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
        [result appendString:number.stringValue];
        counter++;
        if(counter == 4) {
            return result;
        }
        [result appendString:@"."];
    }
    while (counter!=4) {
        [result appendString:@"0"];
        counter++;
        if(counter == 4) {
            return result;
        }
        [result appendString:@"."];
    }
    return nil;
}

@end
