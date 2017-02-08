//
//  main.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maths Game.h"
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"MATHS!");

        
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        

        
        while(gameOn){
            
            AdditionQuestion *questionReceived = [[AdditionQuestion alloc] init];
            NSLog(@"%@",questionReceived.question);
            
            NSString *strippedString = [InputHandler handleInput];
            
            
            
            
            if([strippedString  isEqualToString: @"quit\n"])
            {
                gameOn = NO;
                continue;
            }
            
            NSInteger answerReceived = [strippedString intValue];
            
            if(answerReceived == questionReceived.answer){
                NSLog(@"Right!");
                score.right++;
                
            }
            else{
                
                NSLog(@"Wrong!");
                score.wrong++;
                
            }
            
            
            [score trackScore];
         
            
        }
        
       
        
        return 0;
    }
}
