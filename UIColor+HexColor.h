//
//  UIColor+HexColor.h
//  RMRHexColorGen
//
//  Created by Roman Churkin on 19/03/15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (HexColor)

+ (UIColor *) colorWithHexString: (NSString *)hex;

@end
