//
//  TypesDetailViewController.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 10.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "TypesDetailViewController.h"


@interface TypesDetailViewController ()

@property (nonatomic, strong) NSMutableArray * arrayTypeOfDrinks;
@property (nonatomic, strong) NSArray * arrayTypeOfCola;
@property (nonatomic, strong) NSArray * arrayTypeOfPepsi;
@property (nonatomic, strong) NSArray * arrayTypeOfWisky;
@property (nonatomic, strong) NSArray * arrayTypeOfVine;
@property (nonatomic, strong) NSArray * arrayTypeOfCoctails;

@end

@implementation TypesDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString * stringTypeOfCola = @"Coca-Cola Diet или диетический и низкокалорийный напиток без сахара, Coca-Cola Light так же напиток отличается низким содержанием калорий и сахара, Coca-Cola Vanilla напиток со вкусом ванили, Coca-Cola Cherry напиток со вкусом вишни";
    NSString * stringTypeOfPepsi = @"Diet Pepsi или диетический и низкокалорийный напиток без сахара, Pepsi Light так же напиток отличается низким содержанием калорий и сахара, Pepsi Vanilla напиток со вкусом ванили, Pepsi Cherry напиток со вкусом вишни";
    NSString * stringTypeOfWisky = @"Американский виски, Шотландский виски, Ирландский виски, Японский виски";
    NSString * stringTypeOfVine = @"Белое, красное, розовое, сухое, полусладкое, крепленое, игристое";
    NSString * stringTypeOfCoctails = @"Алкогольные, безалкогольные";
    
    self.arrayTypeOfDrinks = [NSMutableArray array];
    self.arrayTypeOfCola = [stringTypeOfCola componentsSeparatedByString:@","];
    self.arrayTypeOfPepsi = [stringTypeOfPepsi componentsSeparatedByString:@","];
    self.arrayTypeOfWisky = [stringTypeOfPepsi componentsSeparatedByString:@","];
    self.arrayTypeOfVine = [stringTypeOfVine componentsSeparatedByString:@","];
    self.arrayTypeOfCoctails = [stringTypeOfCoctails componentsSeparatedByString:@","];
    
    
    for (int i=0; i < self.arrayTypeOfCola.count; i++) {
        NSMutableDictionary * dictTypeOfDrinks = [[NSMutableDictionary alloc] init];
    
[dictTypeOfDrinks setObject:[self.arrayTypeOfCola objectAtIndex:i] forKey:@"cola"];
[dictTypeOfDrinks setObject:[self.arrayTypeOfPepsi objectAtIndex:i] forKey:@"pepsi"];
[dictTypeOfDrinks setObject:[self.arrayTypeOfWisky objectAtIndex:i] forKey:@"wisky"];
[dictTypeOfDrinks setObject:[self.arrayTypeOfVine objectAtIndex:i] forKey:@"vine"];
[dictTypeOfDrinks setObject:[self.arrayTypeOfCoctails objectAtIndex:i] forKey:@"coctails"];
    
//        NSString * valueTypeOfDrinks = [self.arrayTypeOfCola objectAtIndex:i];
//
//        if ([valueTypeOfDrinks isEqualToString:@"cola"]) {
//        [dictTypeOfDrinks setObject:<#(id)#> forKey:<#(id<NSCopying>)#>]}
//    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
