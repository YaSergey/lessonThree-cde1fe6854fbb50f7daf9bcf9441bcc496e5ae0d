//
//  DetailViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 09.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "DetailViewController.h"
//#import "MakeArrays.h"



@interface DetailViewController ()



- (IBAction)Back:(id)sender;



@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.valueLabel.text = self.string_valueLabel;
    self.priceLabel.text = [NSString stringWithFormat:@"Цена = %@", self.string_priceLabel];
    self.descrTextView.text = self.string_descrTextView;
    
    
    self.DetailImageView.image = [UIImage imageNamed:self.string_valueLabel];
    
    
    
    
    NSLog(@"имя картинки = %@", self.string_valueLabel);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)Back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
