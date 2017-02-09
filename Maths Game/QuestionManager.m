//
//  QuestionManager.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 8..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"


@implementation QuestionManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [NSMutableArray array];
    }
    return self;
}

-(NSString*)timeOutput{
    NSTimeInterval totalTime = 0;
    NSTimeInterval averageTime = 0;
    
    for (Question* myQuestion in self.questions) {
        totalTime += myQuestion.answerTime;
        
    }
    
    averageTime = totalTime/[self.questions count];
        
    
    return [NSString stringWithFormat:@"total time: %f, average time: %fs",totalTime, averageTime];
}


@end
