//
//  ScoreKeeper.h
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;

-(void)trackScore;

@end
