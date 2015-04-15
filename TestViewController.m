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

    [super viewDidLoad];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void) textFieldDidBeginEding:(UITextField *)textField {

        NSLog(@"textFieldDidBeginEding");
    
    
}
-(void) textFieldDidEndEditing:(UITextField *)textField {

    if (textField.text.length == 0 ) {
        
    }
    else{
    }
    
    NSLog(@"textFieldDidEndEditing");
}

- (BOOL)textfieldShouldRenurn: (UITextField *)textField {

    if (textField == self.textFieldOne && self.textFieldOne.text.length > 0) {
        
        [self.textFieldOne resignFirstResponder]; 
    }
    
    return YES;
}

@end
