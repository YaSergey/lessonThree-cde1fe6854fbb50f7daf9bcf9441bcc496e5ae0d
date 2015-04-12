//
//  TypesDetailViewController.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 10.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TypesDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableViewCell *typeOfDrinksCell;

@property (weak, nonatomic) IBOutlet UIImageView *ImageDetailTypeOfDrinks;
@property (weak, nonatomic) IBOutlet UILabel *LabelDetailTypeOfDrinks;

@end
