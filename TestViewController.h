//
//  TestViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 15.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TestViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTwo;

@property (nonatomic, strong) NSMutableArray * arrayUserName;
- (IBAction)buttonAction:(id)sender;
- (IBAction)switchOne:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *uiSwitchOutlet;
@end
