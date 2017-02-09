//
//  QuestionFactory.h
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 9..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

-(Question *)generateRandomQuestion;

@end
