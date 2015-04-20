//
//  MenuViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 11.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "MenuViewController.h"
#import "MakeArrays.h"
#include "ViewController.h"

@interface MenuViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonFirst;
@property (weak, nonatomic) IBOutlet UIButton *buttonSecond;
@property (nonatomic, strong) MakeArrays * makeArray;


@end

@implementation MenuViewController

- (void)viewDidLoad {
   
    self.makeArray = [MakeArrays new];
    self.arrayM = [NSMutableArray new];

    
    [self.buttonFirst addTarget:self action:@selector(goFirst) forControlEvents: UIControlEventTouchUpInside];
    [self.buttonSecond addTarget:self action:@selector(goSecond) forControlEvents: UIControlEventTouchUpInside];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) goFirst {

    self.makeArray = [MakeArrays new];
    [self.makeArray makeFirstArray];
    
    ViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    view.isFirstArray = YES;
//    self.arrayM = firstArray;
    
//    - (void) makeFirstArray: (NSNotification *) notification {
        
//        [self.arrayM removeAllObjects];
//        self.arrayM = [notification.userInfo objectForKey:ARRAY_KEY];
//        self.isFirstArray = YES;
//        [self reloadTableView];
//
 [self.navigationController pushViewController:view animated:YES];

}


- (void) goSecond {
    
    self.makeArray = [MakeArrays new];
    [self.makeArray makeSecondArray];
    
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
//
    view.isFirstArray = NO;
//    self.arrayM = secondArray;
//
    [self.navigationController pushViewController:view animated:YES];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
