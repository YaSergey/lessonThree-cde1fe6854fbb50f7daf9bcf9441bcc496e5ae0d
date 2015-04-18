//
//  UserNameArrays.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 17.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol MakeUserNameArraysDelegate;


@interface MakeUserNameArrays : NSObject

- (void) makeUserNameArray;
- (void) makeUserPassWordArray;

@property (weak, nonatomic) id <MakeUserNameArraysDelegate> delegate;

@end


@protocol MakeUserNameArraysDelegate <NSObject>


@required

//-(void) makesUserNameArraysReady : (MakeArrays *) makeArrays UserNameArray: (NSMutableArray *) userNameArray;
//
//-(void) makesUserPassWordArrayReady : (MakeArrays *) makeArrays UserPassWordArray: (NSMutableArray *) userPassWordArray;

@end
