//
//  TestViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 15.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()




@end

@implementation TestViewController



- (void) viewDidLoad {
    
    [self performSelector:@selector(setSwitch) withObject: nil afterDelay:5.0f];

    [super viewDidLoad];
}

- (void) setSwitch {

    [self.uiSwitchOutlet setOn:NO animated:YES];
}


- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField; { // метод реагируерт на начало ввода текста
    
    NSLog(@"textFieldDidBeginEditing %@", textField.text);

}

- (void)textFieldDidEndEditing:(UITextField *)textField;  {
    

}


- (BOOL)textFieldShouldReturn:(UITextField *)textField; {
    
if (textField == self.textFieldOne && self.textFieldOne.text.length > 0
    && self.textFieldTwo && self.textFieldTwo.text.length >0)
{
[self.textFieldOne resignFirstResponder];
[self.textFieldTwo resignFirstResponder];

return YES;
    }
     return NO;

}





 
- (IBAction)buttonAction:(id)sender {

    NSLog(@"buttonAction");
    

}

- (IBAction)switchOne:(id)sender {
    UISwitch * switchUI = (UISwitch *)sender;
    
    if (switchUI.on) {
        NSLog(@"switchOne ON");
    
    }else{
    
        NSLog(@"switchAction OFF");
    }
    
    [self buttonAction:nil];
}
@end
