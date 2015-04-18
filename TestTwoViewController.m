//
//  TestTwoViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 19.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "TestTwoViewController.h"
#import "AppConstants.h"


@interface TestTwoViewController ()
- (IBAction)back:(id)sender;

@end

@implementation TestTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithHexString:MAIN_COLOR];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
