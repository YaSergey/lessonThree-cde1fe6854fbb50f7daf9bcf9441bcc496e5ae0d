//
//  imageCell.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 07.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface imageCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UILabel *pricesLabel;
@property (weak, nonatomic) IBOutlet UILabel *fortresLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@end
