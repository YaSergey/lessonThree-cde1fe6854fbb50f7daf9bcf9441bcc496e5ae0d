//
//  MakeArrays.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 12.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MakeArraysDelegate;

@interface MakeArrays : NSObject

- (void) makeFirstArray;
- (void) makeSecondArray;

@property (weak, nonatomic) id <MakeArraysDelegate> delegate;

@end


@protocol MakeArraysDelegate <NSObject>


@optional

-(void) makesArraysGetFirstArrayReady : (MakeArrays *) makeArrays FirstArray: (NSMutableArray *) firstArray;

@required

-(void) makesArraysGetSecondArrayReady : (MakeArrays *) makeArrays SecondArray: (NSMutableArray *) secondArray;

@end
