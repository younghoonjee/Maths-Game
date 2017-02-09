//
//  SubtractionQuestion.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 8..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    
    self.question = [[NSString alloc] initWithFormat: @"%ld - %ld ?", self.rightValue,self.leftValue];
    self.answer = self.rightValue - self.leftValue;
    
}@end
