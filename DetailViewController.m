//
//  DetailViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 09.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.valueLabel.text = self.string_valueLabel;
    self.priceLabel.text = [NSString stringWithFormat:@"Цена = %@", self.priceLabel];
    self.descrTextView.text = self.string_descrTextView;
    
    
    NSString * formatPNG = @"png";
    NSString * formatJPG = @"jpg";
    UIImage * image = [[UIImage alloc] init];
    
    if ([self.string_valueLabel isEqualToString:@"cola"]) {
        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", self.string_valueLabel, formatJPG]];
    }else {
        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", self.string_valueLabel, formatPNG]];
                 }
    
//    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg", self.string_valueLabel]];
    self.DetailImageView.image = image;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
