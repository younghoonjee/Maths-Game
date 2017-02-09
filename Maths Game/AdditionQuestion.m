//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 8..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(void)generateQuestion{
    
    self.question = [[NSString alloc] initWithFormat: @"%ld + %ld ?", self.rightValue,self.leftValue];
    self.answer = self.rightValue + self.leftValue;
}

@end
