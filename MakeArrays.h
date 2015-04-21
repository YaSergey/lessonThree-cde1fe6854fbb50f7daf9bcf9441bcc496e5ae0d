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

- (void) makeDrinksArray;
- (void) makePlacesArray;

@property (weak, nonatomic) id <MakeArraysDelegate> delegate;

@end


@protocol MakeArraysDelegate <NSObject>


@required

-(void) makeArrayGetDrinksArrayReady : (MakeArrays *) makeArray DrinksArray: (NSMutableArray *) drinksArray;



-(void) makeArrayGetPlacesArrayReady : (MakeArrays *) makeArray PlacesArray: (NSMutableArray *) placesArray;

@end
