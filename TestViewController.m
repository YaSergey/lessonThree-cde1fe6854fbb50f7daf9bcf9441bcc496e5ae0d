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
    
    NSLog(@"viewDidLoad");
    
    self.view.backgroundColor = [UIColor colorWithHexString: MAIN_COLOR];

//[self performSelector:@selector(setSwitch) withObject:nil afterDelay:1.0f];
//[self performSelector:@selector(changeColor) withObject: nil afterDelay:5.0f];

    

    

}

- (void) dealloc {

    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (void) notif_Method: (NSNotification *) notif {
    
    NSString * string = [notif.userInfo valueForKey:TEST_KEY];
    
    NSLog(@"notif_Method %@", string);
    
}

- (void)viewWillAppear:(BOOL)animated{
    
    [NSNotificationCenter set_Notif:TEST_NOTIF Selector:@selector(notif_Method:) Object:self];
    
    NSLog(@"viewWillAppear");
    
}
- (void)viewDidAppear:(BOOL)animated{
    
    NSLog(@"viewDidAppear");
    
    [NSNotificationCenter delete_Notif];
    
}
- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"viewWillDisappear");

}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"viewDidDisappear");
}



- (void) changeColor {
    self.view.backgroundColor = [UIColor redColor];
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
    
NSLog(@"textFieldDidBeginEditing %@", textField.text);
}



- (BOOL)textFieldShouldReturn:(UITextField *)textField;{

    if (textField == self.textFieldOne && self.textFieldOne.text.length > 0) {
        [self.textFieldOne resignFirstResponder];
        return YES;
    }
    
    if (self.textFieldTwo && self.textFieldTwo.text.length > 0) {
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
        
        NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"TEST OBJECT", TEST_KEY, nil];
        
//        NSNotificationCenter call_Notif:TEST_NOTIF Dictionary:<#(NSDictionary *)#>
        
        [[NSNotificationCenter defaultCenter] postNotificationName:TEST_NOTIF object: dict];
    
    }else{
    
        NSLog(@"switchAction OFF");
    }
    
    [self buttonAction:nil];
}
@end
