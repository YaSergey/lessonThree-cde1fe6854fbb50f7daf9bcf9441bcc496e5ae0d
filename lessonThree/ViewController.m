
//  ViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 06.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.

#import "ViewController.h"
#import "imageCell.h"
#import "DetailViewController.h"
#import "TypesDetailViewController.h"
#import "MenuViewController.h"
#import "MakeArrays.h"

@interface ViewController ()

//@property (nonatomic, strong) NSMutableArray * arrayM;

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) MakeArrays * makeArray;

- (IBAction)backAction:(id)sender;
- (IBAction)firstArrayAction:(id)sender;
- (IBAction)secondArrayAction:(id)sender;

//@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isDrinksArray = YES;
    self.arrayMainMutable = [NSMutableArray array];
    self.makeArray = [MakeArrays new];
    self.makeArray.delegate = self;
    
self.arrayMainMutable = [NSMutableArray array]; // выделение памяти для массива
    
       
    if (self.isDrinksArray) {
        [self firstArrayAction: nil];
    }
    else {
        [self secondArrayAction:nil];
    }
    
}

//    метод создания первого массива

- (void) makeDrinksArray: (NSNotification *) notification {

//    [self.arrayMainMutable removeAllObjects];
    self.arrayMainMutable = [notification.userInfo objectForKey:ARRAY_KEY];
      self.isDrinksArray = YES;
        [self reloadTableView];
    
    NSLog(@"первый массив %@", self.arrayMainMutable);

}

//    метод создания второго массива
- (void) makePlacesArray: (NSNotification *) notification {
    
//    [self.arrayMainMutable removeAllObjects];
    self.arrayMainMutable = [notification.userInfo objectForKey:ARRAY_KEY];
    self.isDrinksArray = NO;
    [self reloadTableView];
    
}


- (void)viewWillAppear:(BOOL)animated{
    
    [NSNotificationCenter set_Notif:ARRAY_NOTIF Selector: @selector(makeDrinksArray:) Object:self];
}

- (void)viewWillDisappear:(BOOL)animated{
    [NSNotificationCenter delete_Notif];
}

- (void) reloadTableView {dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];});
}

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
    return self.arrayMainMutable.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"imageCell";
    
    imageCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[imageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: simpleTableIdentifier];
    }
    
    if (self.isDrinksArray) {
    cell.valueLabel.text = [[self.arrayMainMutable objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.pricesLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"price"];
    cell.fortresLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"fortres"];
    cell.titleLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"title"];
    cell.cellImageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@Icon.jpg",
        [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"value"]]];
    }
    else{
        cell.valueLabel.text = [[self.arrayMainMutable objectAtIndex:indexPath.row]objectForKey:@"value"];
        cell.pricesLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"price"];
        cell.fortresLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"fortres"];
        cell.titleLabel.text = [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"title"];
        cell.cellImageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%@Icon.jpg",
        [[self.arrayMainMutable objectAtIndex: indexPath.row]objectForKey:@"value"]]];
    }

       return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
    
    [tableView deselectRowAtIndexPath:indexPath animated: YES];
    
DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    NSDictionary * dict = [self.arrayMainMutable objectAtIndex:indexPath.row];
    
detail.string_valueLabel = [dict objectForKey:@"value"];
detail.string_priceLabel = [dict objectForKey:@"price"];
detail.string_descrTextView  = [dict objectForKey:@"discr"];
    
    
    [self.navigationController pushViewController:detail animated:YES];

    
 NSLog(@"indexPath %li", (long)indexPath.row);

}


- (IBAction)backAction:(id)sender { // кнопка назад
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)firstArrayAction:(id)sender { // вызов первого массива
    
     MakeArrays * makeArray = [MakeArrays new];
     [makeArray setDelegate:self];
    [makeArray makeDrinksArray];
   
    
//    [self makeDrinksArray];
    [self reloadTabView];
}

- (IBAction)secondArrayAction:(id)sender {  // вызов второго массива
    
     MakeArrays * makeArray = [MakeArrays new];
    [makeArray setDelegate:self];
    [makeArray makePlacesArray];
    
//    [self makePlacesArray];
    

    [self reloadTabView];
    
}


//===============================++++++++++++++++++=================
#pragma mark - MakeArraysDelegate

- (void) makeArrayGetDrinksArrayReady : (MakeArrays *) makeArray DrinksArray: (NSMutableArray *) drinksArray
{
    
    self.isDrinksArray = YES;
    
//    [self.arrayMainMutable removeAllObjects];
//    
//    self.arrayMainMutable = drinksArray;
     [self reloadTabView];
    
       NSLog(@"drinksArray %@", drinksArray);
}


- (void) makeArrayGetPlacesArrayReady : (MakeArrays *) makeArray PlacesArray: (NSMutableArray *) placesArray
{
//    [self.arrayMainMutable removeAllObjects];
    self.isDrinksArray = NO;
//    self.arrayMainMutable = placesArray;
    [self reloadTabView];
//
//    NSLog(@"placesArray %@", placesArray);
}






@end
