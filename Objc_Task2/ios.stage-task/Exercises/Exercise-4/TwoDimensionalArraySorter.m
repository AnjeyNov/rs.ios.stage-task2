#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray<NSNumber *> *numbersArray = [NSMutableArray new];
    NSMutableArray<NSString *> *stringsArray = [NSMutableArray new];
    if ([array.firstObject isKindOfClass:NSArray.class]) {
        for (NSArray *element in array) {
            if(element.count != 0) {
                if([element.firstObject isKindOfClass:NSString.class]) {
                    [stringsArray addObjectsFromArray:element];
                } else {
                    [numbersArray addObjectsFromArray:element];
                }
            }
        }
    } else {
        return @[];
    }
    [stringsArray sortUsingSelector:@selector(compare:)];
    [numbersArray sortUsingSelector:@selector(compare:)];
    if (stringsArray.count == 0) {
        return numbersArray;
    }
    if (numbersArray.count == 0) {
        return stringsArray;
    }
    NSMutableArray<NSArray* > *result = [NSMutableArray new];
    [result addObject:numbersArray];
    [result addObject:stringsArray];
    
    return @[];
}

@end
