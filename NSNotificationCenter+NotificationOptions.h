//
//  NSNotificationCenter+NotificationOptions.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 19.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (NotificationOptions)


+(void) set_Notif: (NSString *) name_Notif Selector: (SEL) name_Method Object: (UIViewController *) controller;

+ (void) call_Notif: (NSString *) name_Notif Dictionary: (NSDictionary *) dictionary;

+ (void) delete_Notif;




@end
