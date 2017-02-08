//
//  InputHandler.m
//  Maths Game
//
//  Created by Younghoon jee on 2017. 2. 7..
//  Copyright © 2017년 Younghoon jee. All rights reserved.
//

#import "InputHandler.h"



@implementation InputHandler

+(NSString*) handleInput{
    
    char charString[255];
    
    
    
    
    fgets(charString, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString: charString encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *whiteSpaceCharacters = [NSCharacterSet whitespaceCharacterSet];
    
    NSString *strippedString = [inputString stringByTrimmingCharactersInSet:whiteSpaceCharacters];
    
    return strippedString;
}






@end
