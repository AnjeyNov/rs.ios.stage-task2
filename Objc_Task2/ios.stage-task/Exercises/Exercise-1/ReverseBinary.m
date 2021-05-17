#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    NSMutableArray *bits = [[NSMutableArray alloc] initWithArray: @[@0, @0, @0, @0, @0, @0, @0, @0]];
    
    if(n != 0) {
        int position = -1;
        while (n != 0) {
            position++;
            if(n%2 != 0) {
                bits[position] = @1;
            }
            n = n/2;
        }
        bits[position] = @1;
        int mult = 128;
        int result = 0;
        for (int i = 0; i <= position; i++) {
            if ([bits[i]  isEqual: @1]) {
                result+= mult;
            }
            mult/=2;
        }
        return result;
    }
    
    return 0;
}
