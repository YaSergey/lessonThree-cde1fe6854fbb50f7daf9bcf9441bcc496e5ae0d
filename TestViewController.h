//
//  TestViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 15.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textFieldOne;
@property (strong, nonatomic) IBOutlet UITextField *textFieldTwo;

@property (nonatomic, strong) NSMutableArray * arrayUserName;
@end
