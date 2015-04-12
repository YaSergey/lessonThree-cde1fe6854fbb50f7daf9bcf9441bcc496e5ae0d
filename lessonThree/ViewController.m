//
//  ViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 06.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//
#import "ViewController.h"
#import "imageCell.h"
#import "DetailViewController.h"
#import "TypesDetailViewController.h"
#import "MenuViewController.h"
#import "MakeArrays.h"



@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;
@property (nonatomic, strong) NSArray * arrayFortres;
@property (nonatomic, strong) NSArray * arrayTitle;
@property (weak, nonatomic) IBOutlet UITableView *tableView;




- (IBAction)backAction:(id)sender;

- (IBAction)firstArrayAction:(id)sender;
- (IBAction)secondArrayAction:(id)sender;

//@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad { [super viewDidLoad];
    
    self.arrayM = [NSMutableArray array]; // выделение памяти для массива
    
    
    if (self.isFirstArray) {
        [self makeFirstArray];
    }
    else {
        [self makeSecondArray];
    }
}

- (void) makeFirstArray {
    self.isFirstArray = YES;
    [self.arrayM removeAllObjects]; // удаление данных из массива
    self.arrayM = [MakeArrays makeFirstArray];

}

- (void) makeSecondArray {
    self.isFirstArray = NO;
    [self.arrayM removeAllObjects];
    self.arrayM = [MakeArrays makeSecondArray];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////////////////////////////////////// ТАблица!!!!!//////////////



#pragma mark - UITableViewDelegate

- (void) reloadTabView {

    dispatch_async(dispatch_get_main_queue(), ^ {
    
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex: 0] withRowAnimation:UITableViewRowAnimationFade];
    });

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayPrices.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"imageCell";
    
    imageCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[imageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: simpleTableIdentifier];
    }
    
    if (self.isFirstArray) {
    cell.valueLabel.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.pricesLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"price"];
    cell.fortresLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"fortres"];
    cell.titleLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"title"];
    cell.cellImageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@Icon.jpg",
        [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"value"]]];
    }
    else{
        cell.valueLabel.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
        cell.pricesLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"price"];
        cell.fortresLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"fortres"];
        cell.titleLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"title"];
        cell.cellImageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@Icon.jpg",
        [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"value"]]];
    }
  

       return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated: YES];
    
DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    NSDictionary * dict = [self.arrayM objectAtIndex:indexPath.row];
    
detail.string_valueLabel = [dict objectForKey:@"value"];
detail.string_priceLabel = [dict objectForKey:@"price"];
detail.string_descrTextView  = [dict objectForKey:@"discr"];
    
    
    [self.navigationController pushViewController:detail animated:YES];

    
 NSLog(@"indexPath %li", (long)indexPath.row);

}
    


- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)firstArrayAction:(id)sender {
    [self makeFirstArray];
    [self reloadTabView];
}

- (IBAction)secondArrayAction:(id)sender {
    [self makeSecondArray];
    [self reloadTabView];
    
}
@end
