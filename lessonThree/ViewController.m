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

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayM;
@property (nonatomic, strong) NSArray * arrayPrices;
@property (nonatomic, strong) NSArray * arrayValues;
@property (nonatomic, strong) NSArray * arrayFortres;
@property (nonatomic, strong) NSArray * arrayTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString * stringValues = @"cola,pepsi,wisky,boorbon,b52";
    NSString * stringPrices = @"100,120,300,400,600";
    NSString * stringFortres = @"без алкогольный,безалкогольный,крепкий,крепкий,средний";
    NSString * stringTitle = @"drink coke напитки компании кокакола производятся в америке как поило для идиотовв,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    
    NSString *stringDisCola = @"Напиток «Кока-кола» был придуман в Атланте (штат Джорджия, США) 8 мая 1886 года фармацевтом Джоном Ститом Пембертоном — бывшим офицером американской Армии конфедерации (есть легенда, что его придумал фермер, который продал свой рецепт Джону Ститу за 250 $, о чём Джон Стит якобы сказал в одном из своих интервью). Название для нового напитка придумал бухгалтер Пембертона — Фрэнк Робинсон, который также, владея каллиграфией, написал слова «Coca-Cola» фигурными буквами, до сих пор являющимися логотипом напитка";
    NSString *stringDisPepsi = @"Пепси-колу» придумал в 1898 году американский фармацевт Калеб Брэдхем из Нью-Берна. В состав газировки, которую он назвал «Напиток Брэда», входили пепсин и экстракт орехов колы. Он также приписывал газировке целебные свойства и уверял, что пепсин способствует пищеварению. Привычное название и широкое признание «Пепси-Кола» получила в 1903 году. В 1964 году «Пепси» выпустила диетическую газировку.";
    NSString *stringDisWisky = @"Ви́ски (англ. whisky или whiskey) — крепкий ароматный алкогольный напиток, получаемый из различных видов зерна с использованием процессов соложения, перегонки и длительного выдерживания в дубовых бочках. При изготовлении виски может использоваться ячмень, рожь, пшеница или кукуруза. В Бретани также делают виски из гречихи. Содержание спирта — обычно 32—50 % об., однако некоторые сорта виски имеют бо́льшую крепость (до 60 % об.). Цвет напитка варьируется от светло-жёлтого до коричневого, содержание сахара — нулевое или крайне незначительное. Традиционными регионами, производящими виски, являются Шотландия и Ирландия.";
    NSString *stringDisBoorbon = @"Бурбо́н вид виски, производится в США. Бурбон появился в конце XVIII начале XIX века в городе Парис (округ Бурбон, штат Кентукки, США)[1]. Точнее, 1821 годом датируется первая сохранившаяся реклама нового напитка с таким названием. Сам рецепт был известен и ранее: как минимум с 1789 года преподобный Элайя Крейг дистиллировал похожий напиток для нужд своих прихожан";
    NSString *stringDisB52 = @"Б-52 коктейль (относится к категории коктейлей pousse café), состоящий из трёх наслоённых ликёров. В правильно приготовленном коктейле кофейный ликёр (например, Kahlúa), ликёр Бейлис и ликёр Cointreau (либо Трипл-сек) не смешиваются и создают три хорошо видимых слоя";
    
    
    self.arrayM = [NSMutableArray array];
    
    self.arrayValues = [stringValues componentsSeparatedByString:@","];
    self.arrayPrices = [stringPrices componentsSeparatedByString:@","];
    self.arrayFortres = [stringFortres componentsSeparatedByString:@","];
    self.arrayTitle = [stringTitle componentsSeparatedByString:@","];
    
    for (int i=0; i < self.arrayPrices.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[self.arrayPrices objectAtIndex:   i] forKey:@"price"];
    [dict setObject:[self.arrayValues objectAtIndex:   i] forKey:@"value"];
    [dict setObject:[self.arrayFortres objectAtIndex:  i] forKey:@"fortres"];
    [dict setObject:[self.arrayTitle objectAtIndex:    i] forKey:@"title"];
    
        NSString * value = [self.arrayValues objectAtIndex:i];
        
        if ([value isEqualToString:@"cola"]) {
            [dict setObject: stringDisCola forKey:@"discr"];
        }
        else if ([value isEqualToString:@"pepsi"]){
        [dict setObject: stringDisPepsi forKey:@"discr"];
        }
        else if ([value isEqualToString:@"wisky"]){
            [dict setObject: stringDisWisky forKey:@"discr"];
        }
        else if ([value isEqualToString:@"boorbon"]){
            [dict setObject: stringDisBoorbon forKey:@"discr"];
        }
      
        else if ([value isEqualToString:@"b52"]){
            [dict setObject: stringDisB52 forKey:@"discr"];
        }
        [self.arrayM addObject:dict];
    }
    
//    NSLog(@"self.arrayM %@", self.arrayM);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayPrices.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"imageCell";
    
    imageCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil)
    
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier: simpleTableIdentifier];
    }
    cell.valueLabel.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
    cell.pricesLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"price"];
    cell.fortresLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"fortres"];
    cell.titleLabel.text = [[self.arrayM objectAtIndex: indexPath.row]objectForKey:@"title"];
//    cell.cellImageView.image = [[self.arrayM objectAtIndex: indexPath.row]
//        objectAtIndex:@"value"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath
{
DetailViewController *detail = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    
    NSDictionary * dict = [self.arrayM objectAtIndex:indexPath.row];
    
detail.string_valueLabel = [dict objectForKey:@"value"];
detail.string_priceLabel = [dict objectForKey:@"price"];
detail.string_descrTextView  = [dict objectForKey:@"discr"];
    
    
    [self.navigationController pushViewController:detail animated:YES];

    
 NSLog(@"indexPath %i", indexPath.row);

}
    


@end
