//
//  NSNotificationCenter+NotificationOptions.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 19.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "NSNotificationCenter+NotificationOptions.h"

@implementation NSNotificationCenter (NotificationOptions)

+(void) set_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object: (UIViewController *) controller {

    
    [[NSNotificationCenter defaultCenter] addObserver:controller selector:name_Method name:name_Notif object:nil];
}

+ (void) call_Notif: (NSString *) name_Notif Dictionary: (NSDictionary *) dictionary {

    [[NSNotificationCenter defaultCenter] postNotificationName:name_Notif object:nil userInfo: dictionary];
    

//+ (void) call_Notif_With_Data: (NSString *) name_Notif{
//[[NSNotificationCenter defaultCenter] postNotificationName:name_Notif object: nil];
//    
//    }
}
+ (void) delete_Notif {

    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

@end
