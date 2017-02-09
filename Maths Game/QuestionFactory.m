//
//  QuestionFactory.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 9..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question*)generateRandomQuestion{
    
    NSArray *questionSubclassName = @[@"AdditionQuestion", @"SubtractionQuestion",@"DivisionQuestion",@"MultiplicationQuestion"];
    
    NSString* className = questionSubclassName[arc4random_uniform((u_int32_t)[questionSubclassName count])]; // array subscripting method (short hand for the array index method)
    
    Question* newQuestion = [[NSClassFromString(className) alloc]init];
    
    return newQuestion;
}


@end
