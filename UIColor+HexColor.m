//
//  NSColorList+RMRHexColor.m
//  RMRHexColorGen
//
//  Created by Roman Churkin on 19/03/15.
//  Copyright (c) 2015 RedMadRobot. All rights reserved.
//

#import "UIColor+HexColor.h"


@implementation UIColor (HexColor)

+ (UIColor *)colorWithHexString: (NSString *) hex
{


    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    //
    if ([cString length] < 6) return [UIColor grayColor];
    
    if ([cString hasPrefix:@"@X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return [UIColor grayColor];
    
    //
    
    NSRange range;
    
    range.location = 0;
    range.length = 0;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    
    
    unsigned int r, g, b;
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
return [UIColor colorWithRed:((float) r/ 255.0f)
                       green:((float) g / 255.0f)
                         blue:((float) b/ 255.0f)
                       alpha:1.0f];
    
    
}

@end
