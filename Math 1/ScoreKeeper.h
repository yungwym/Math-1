//
//  ScoreKeeper.h
//  Math 1
//
//  Created by Alex Wymer  on 2017-06-27.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger wrong;

-(NSString *)displayScore; 

@end
