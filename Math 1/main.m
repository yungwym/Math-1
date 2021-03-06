//
//  main.m
//  Math 1
//
//  Created by Alex Wymer  on 2017-06-27.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL PLAY = YES;
        
        UserInput *userInput = [[UserInput alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
    
        while (PLAY == YES) {
            
            
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", additionQuestion.question);
            
            [userInput getInput];
            NSLog(@"You entered: %@", userInput.response);
            
            
            if ([userInput.response containsString:@"quit"]) {
                PLAY = NO;
                break;
            }
            
            if (additionQuestion.answer == userInput.response.integerValue) {
                
                NSLog(@"Right!");
                scoreKeeper.right += 1;
                NSLog(@"%@",[scoreKeeper displayScore]);
                
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong += 1;
                NSLog(@"%@",[scoreKeeper displayScore]);
                
            }
        }
    }
    return 0;
}
