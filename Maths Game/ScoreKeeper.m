//
//  ScoreKeeper.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)trackScore{
    
    double percentage = self.right/(self.right+ self.wrong)*100;
    
    NSLog(@"score: %i right, %i wrong ---- %f %% \n",self.right,self.wrong,percentage);
    
    
}

@end
