//
//  AdditionQuestion.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        int num1 = arc4random_uniform(100) + 10;
        int num2 = arc4random_uniform(100) + 10;
        
        _question = [[NSString alloc] initWithFormat: @"%i + %i ?", num1,num2];
        _answer = num1 + num2;
        
        
    }
    return self;
}



@end
