//
//  main.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maths Game.h"
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"






int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        BOOL gameOn = YES;
        NSLog(@"MATHS!");
       

        
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *manager = [[QuestionManager alloc] init];
        QuestionFactory *factory = [[QuestionFactory alloc] init];
        

        
        while(gameOn){
            
            Question *questionReceived = [factory generateRandomQuestion];
            NSLog(@"%@",questionReceived.question);
            
            [manager.questions addObject:questionReceived];
            
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
         
          NSLog(@"%@",  [manager timeOutput]);
            
        }
        
       
        
        return 0;
    }
}
