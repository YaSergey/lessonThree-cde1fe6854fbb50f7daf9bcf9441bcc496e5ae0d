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
//@property (nonatomic, strong) NSMutableArray * makeFirstArray;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;
@property (nonatomic, strong) NSArray * arrayFortres;
@property (nonatomic, strong) NSArray * arrayTitle;
@property (nonatomic, strong) IBOutlet UITableView *tableView;




- (IBAction)backAction:(id)sender;

- (IBAction)firstArrayAction:(id)sender;

- (IBAction)secondArrayAction:(id)sender;

//@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad { [super viewDidLoad];
    
//    self.arrayM = [NSMutableArray array]; // выделение памяти для массива
    
       
    if (self.isFirstArray) {
        [self firstArrayAction: nil];
    }
    else {
        [self firstArrayAction:nil];
    }
}

//- (void) makeFirstArray {
//    self.isFirstArray = YES;
//  
////self.arrayM = firstArray;
//    
////    self.isFirstArray = firstArray ;
//    
////    self.isFirstArray = firstArray;
//    
////    [self.arrayM removeAllObjects]; // удаление данных из массива
//    NSLog(@"Печать таблицы 1 из контроллера arrayM %@", self.arrayM);
//
//}
//
//- (void) makeSecondArray {
//    self.isFirstArray = NO;
////    [self.arrayM removeAllObjects];
//    
////self.arrayM = secondArray;
//    
//    NSLog(@"Печать таблицы 2 из контроллера arrayM %@", self.arrayM);
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
////////////////////////////////////////////// ТАблица!!!!!//////////////



#pragma mark - UITableViewDelegate

- (void) reloadTabView {
    
    
    dispatch_async(dispatch_get_main_queue(), ^ (void){
    
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex: 0] withRowAnimation:UITableViewRowAnimationFade];
    });

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    NSLog(@"self.arrayM.count %lu ", (unsigned long)self.arrayM.count);
    return self.arrayM.count;
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
    MakeArrays * marray = [MakeArrays new];
    [marray setDelegate:self];
    [marray makeFirstArray];
    
//    [self makeFirstArray];
//    [self reloadTabView];
}

- (IBAction)secondArrayAction:(id)sender {
    MakeArrays * marray = [MakeArrays new];
    [marray setDelegate:self];
    [marray makeSecondArray];
    
//    [self makeSecondArray];
//    [self reloadTabView];
    
}


//===============================++++++++++++++++++=================
#pragma mark - MakeArraysDelegate

- (void) makesArraysGetFirstArrayReady:(MakeArrays *)makeArrays FirstArray:(NSMutableArray *)firstArray {
//    [self.arrayM removeAllObjects];
    self.isFirstArray = YES;
    self.arrayM = firstArray;
     [self reloadTabView];
    
}

- (void) makesArraysGetSecondArrayReady:(MakeArrays *)makeArrays SecondArray:(NSMutableArray *)secondArray {
    
    self.isFirstArray = NO;

    self.arrayM = secondArray;
    
    [self reloadTabView];
    
//    NSLog(@"secondArray %@", secondArray);
}

@end
