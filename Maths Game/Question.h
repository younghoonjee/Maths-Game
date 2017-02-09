//
//  Question.h
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString * question;
@property (nonatomic) NSInteger  answer;
@property (nonatomic, strong) NSDate * startTime;
@property (nonatomic, strong)NSDate * endTime;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;

-(NSTimeInterval)answerTime;

-(void)generateQuestion;

@end
