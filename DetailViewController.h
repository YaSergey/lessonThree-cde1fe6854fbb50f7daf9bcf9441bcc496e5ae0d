//
//  DetailViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 09.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSString *string_valueLabel;
@property (strong, nonatomic) NSString *string_priceLabel;
@property (strong, nonatomic) NSString *string_descrTextView;

@property (strong, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;
@property (strong, nonatomic) IBOutlet UITextView *descrTextView;
@property (strong, nonatomic) IBOutlet UIImageView *DetailImageView;

@end
