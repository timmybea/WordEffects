//
//  main.m
//  WordEffects
//
//  Created by Tim Beals on 2016-10-31.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char skip[3];
        char inputChar[255];
        int operationNumber;
        
        while(true){
            printf("Enter String: ");
            fgets(inputChar, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChar];
            inputString = [inputString substringToIndex:([inputString length] - 1)];
            printf(" ______________________________\n");
            printf("| Available Operations:        |\n");
            printf("| 1) Upper Case                |\n");
            printf("| 2) Lower Case                |\n");
            printf("| 3) Numberize                 |\n");
            printf("| 4) Candianize                |\n");
            printf("| 5) Respond                   |\n");
            printf("| 6) De-Space-It               |\n");
            printf("|______________________________|\n");
            printf("\n");
            printf("Enter operation: ");
            scanf("%d", &operationNumber);
            fgets(skip, 3, stdin);
            NSUInteger lastChar;
            
            switch (operationNumber) {
                case 1:
                    NSLog(@"%@", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"%@", [inputString lowercaseString]);
                    break;
                case 3:
                    NSLog(@"%ld", [inputString integerValue]);
                    break;
                case 4:
                    NSLog(@"%@", [inputString stringByAppendingString:@" eh!"]);
                    break;
                case 5:
                    lastChar = (inputString.length - 1);
                    if([inputString characterAtIndex:lastChar] == '?') {
                        NSLog(@"I don't know.");
                    } else if([inputString characterAtIndex:lastChar] == '!') {
                        NSLog(@"Whoa, settle down!");
                    }
                case 6:
                    NSLog(@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
            }
        }
        return 0;
    }
}
