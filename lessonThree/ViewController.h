//
//  ViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 06.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MakeArrays.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, MakeArraysDelegate>

@property (nonatomic, assign) BOOL isFirstArray;


@end