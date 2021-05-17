#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSArray <NSNumber *>  *sortedArray = [array sortedArrayUsingSelector:@selector(compare:)];
    NSInteger count = 0;
    for (int i = 0; i < sortedArray.count - 1 ; i++) {
        for (int j = 1; j < sortedArray.count; j++) {
            if((sortedArray[j].intValue - sortedArray[i].intValue)== number.intValue) {
                count++;
            }
        }
    }
    return count;
}

@end
