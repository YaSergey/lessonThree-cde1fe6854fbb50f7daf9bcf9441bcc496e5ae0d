//
//  DetailViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 09.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) NSString *string_valueLabel;
@property (weak, nonatomic) NSString *string_priceLabel;
@property (weak, nonatomic) NSString *string_descrTextView;

@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UITextView *descrTextView;

@end
