//
//  Question.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _rightValue = arc4random_uniform(100) + 10;
        _leftValue = arc4random_uniform(100) + 10;
        
        _question = [[NSString alloc] initWithFormat: @"%i + %i ?", _rightValue,_leftValue];
        _answer = _rightValue + _leftValue;
        _startTime = [NSDate date];

        
    }
    return self;
}


-(NSInteger)answer{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime{
   return [self.endTime timeIntervalSinceDate:self.startTime];
}

-(void)generateQuestion{
}



@end
