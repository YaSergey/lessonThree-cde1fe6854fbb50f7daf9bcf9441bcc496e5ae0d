//
//  MakeArrays.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 12.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "MakeArrays.h"

@implementation MakeArrays

- (void) makeDrinksArray {

    NSMutableArray * arrayMainMutable = [[NSMutableArray alloc]init];
    
    NSString * stringValues = @"cola,juce,wisky,vine,coctails";
    NSString * stringPrices = @"100,120,300,400,600";
    NSString * stringFortres = @"безалкогольный,безалкогольный,крепкий,крепкий2,средний";
    NSString * stringTitle = @"drink coke напитки компании кокакола производятся в америке,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    
    NSString *stringDisCola = @"Напиток «Кока-кола» был придуман в Атланте (штат Джорджия, США) 8 мая 1886 года фармацевтом Джоном Ститом Пембертоном — бывшим офицером американской Армии конфедерации (есть легенда, что его придумал фермер, который продал свой рецепт Джону Ститу за 250 $, о чём Джон Стит якобы сказал в одном из своих интервью). Название для нового напитка придумал бухгалтер Пембертона — Фрэнк Робинсон, который также, владея каллиграфией, написал слова «Coca-Cola» фигурными буквами, до сих пор являющимися логотипом напитка";
    NSString *stringDisJuce = @"Пепси-колу» придумал в 1898 году американский фармацевт Калеб Брэдхем из Нью-Берна. В состав газировки, которую он назвал «Напиток Брэда», входили пепсин и экстракт орехов колы. Он также приписывал газировке целебные свойства и уверял, что пепсин способствует пищеварению. Привычное название и широкое признание «Пепси-Кола» получила в 1903 году. В 1964 году «Пепси» выпустила диетическую газировку.";
    NSString *stringDisWisky = @"Ви́ски (англ. whisky или whiskey) — крепкий ароматный алкогольный напиток, получаемый из различных видов зерна с использованием процессов соложения, перегонки и длительного выдерживания в дубовых бочках. При изготовлении виски может использоваться ячмень, рожь, пшеница или кукуруза. В Бретани также делают виски из гречихи. Содержание спирта — обычно 32—50 % об., однако некоторые сорта виски имеют бо́льшую крепость (до 60 % об.). Цвет напитка варьируется от светло-жёлтого до коричневого, содержание сахара — нулевое или крайне незначительное. Традиционными регионами, производящими виски, являются Шотландия и Ирландия.";
    NSString *stringDisVine = @"Бурбо́н вид виски, производится в США. Бурбон появился в конце XVIII начале XIX века в городе Парис (округ Бурбон, штат Кентукки, США)[1]. Точнее, 1821 годом датируется первая сохранившаяся реклама нового напитка с таким названием. Сам рецепт был известен и ранее: как минимум с 1789 года преподобный Элайя Крейг дистиллировал похожий напиток для нужд своих прихожан";
    NSString *stringDisCoctails = @"Б-52 коктейль (относится к категории коктейлей pousse café), состоящий из трёх наслоённых ликёров. В правильно приготовленном коктейле кофейный ликёр (например, Kahlúa), ликёр Бейлис и ликёр Cointreau (либо Трипл-сек) не смешиваются и создают три хорошо видимых слоя";

        __block int i = 0;
    
    NSArray * arrayValues = [stringValues componentsSeparatedByString:@","];
    NSArray * arrayPrices = [stringPrices componentsSeparatedByString:@","];
    NSArray * arrayFortres = [stringFortres componentsSeparatedByString:@","];
    NSArray * arrayTitle = [stringTitle componentsSeparatedByString:@","];
    
    [arrayValues enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {

        
    NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
    [dict setObject:[arrayPrices objectAtIndex:   idx] forKey:@"price"];
    [dict setObject:[arrayValues objectAtIndex:   idx] forKey:@"value"];
    [dict setObject:[arrayFortres objectAtIndex:  idx] forKey:@"fortres"];
    [dict setObject:[arrayTitle objectAtIndex:    idx] forKey:@"title"];
        
    NSString * value = [arrayValues objectAtIndex:idx];
        
        if ([value isEqualToString:@"cola"]) {
            [dict setObject: stringDisCola forKey:@"discr"];
        }
        else if ([value isEqualToString:@"juce"]){
            [dict setObject: stringDisJuce forKey:@"discr"];
        }
        else if ([value isEqualToString:@"wisky"]){
            [dict setObject: stringDisWisky forKey:@"discr"];
        }
        else if ([value isEqualToString:@"vine"]){
            [dict setObject: stringDisVine forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"coctails"]){
            [dict setObject: stringDisCoctails forKey:@"discr"];
        }
        [arrayMainMutable addObject:dict];
        
        i++;
        
        if (stop && i == arrayValues.count) {
            
NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:arrayMainMutable, ARRAY_KEY, nil];
            
[NSNotificationCenter call_Notif:ARRAY_NOTIF Dictionary:dict];
            
            
UILabel * lbl = [[UILabel alloc] init];
            lbl.font = [UIFont fontWithName:MAIN_FONT size:MAIN_SIZE];
            

[self.delegate makeArrayGetDrinksArrayReady: self DrinksArray:arrayMainMutable];

        }
        
    }];

// NSLog(@"Печать массива в консоль №1 - arrayM %@", arrayM);
}
//    return arrayM;
    


- (void) makePlacesArray {
    
    NSMutableArray * arrayMainMutable = [[NSMutableArray alloc]init];
    
    NSString * stringValues = @"clubs,restorants,bars,pubs,cafe";
    NSString * stringPrices = @"1000,1200,3000,4000,6000";
    NSString * stringFortres = @"все включено,крепкий алкоголь,только вино,только пиво,лимонад";
    NSString * stringTitle = @"drink coke напитки компании кокакола производятся в америке,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    
    NSString *stringDisClubs = @"Напиток «Кока-кола» был придуман в Атланте (штат Джорджия, США) 8 мая 1886 года фармацевтом Джоном Ститом Пембертоном — бывшим офицером американской Армии конфедерации (есть легенда, что его придумал фермер, который продал свой рецепт Джону Ститу за 250 $, о чём Джон Стит якобы сказал в одном из своих интервью). Название для нового напитка придумал бухгалтер Пембертона — Фрэнк Робинсон, который также, владея каллиграфией, написал слова «Coca-Cola» фигурными буквами, до сих пор являющимися логотипом напитка";
    NSString *stringDisRestorants = @"Пепси-колу» придумал в 1898 году американский фармацевт Калеб Брэдхем из Нью-Берна. В состав газировки, которую он назвал «Напиток Брэда», входили пепсин и экстракт орехов колы. Он также приписывал газировке целебные свойства и уверял, что пепсин способствует пищеварению. Привычное название и широкое признание «Пепси-Кола» получила в 1903 году. В 1964 году «Пепси» выпустила диетическую газировку.";
    NSString *stringDisBars = @"Ви́ски (англ. whisky или whiskey) — крепкий ароматный алкогольный напиток, получаемый из различных видов зерна с использованием процессов соложения, перегонки и длительного выдерживания в дубовых бочках. При изготовлении виски может использоваться ячмень, рожь, пшеница или кукуруза. В Бретани также делают виски из гречихи. Содержание спирта — обычно 32—50 % об., однако некоторые сорта виски имеют бо́льшую крепость (до 60 % об.). Цвет напитка варьируется от светло-жёлтого до коричневого, содержание сахара — нулевое или крайне незначительное. Традиционными регионами, производящими виски, являются Шотландия и Ирландия.";
    NSString *stringDisPubs= @"Бурбо́н вид виски, производится в США. Бурбон появился в конце XVIII начале XIX века в городе Парис (округ Бурбон, штат Кентукки, США)[1]. Точнее, 1821 годом датируется первая сохранившаяся реклама нового напитка с таким названием. Сам рецепт был известен и ранее: как минимум с 1789 года преподобный Элайя Крейг дистиллировал похожий напиток для нужд своих прихожан";
    NSString *stringDisCafe = @"Б-52 коктейль (относится к категории коктейлей pousse café), состоящий из трёх наслоённых ликёров. В правильно приготовленном коктейле кофейный ликёр (например, Kahlúa), ликёр Бейлис и ликёр Cointreau (либо Трипл-сек) не смешиваются и создают три хорошо видимых слоя";
    
    
    __block int i = 0;
    
    NSArray * arrayValues = [stringValues componentsSeparatedByString:@","];
    NSArray * arrayPrices = [stringPrices componentsSeparatedByString:@","];
    NSArray * arrayFortres = [stringFortres componentsSeparatedByString:@","];
    NSArray * arrayTitle = [stringTitle componentsSeparatedByString:@","];
    
    
    [arrayValues enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {

        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[arrayPrices objectAtIndex:   idx] forKey:@"price"];
        [dict setObject:[arrayValues objectAtIndex:   idx] forKey:@"value"];
        [dict setObject:[arrayFortres objectAtIndex:  idx] forKey:@"fortres"];
        [dict setObject:[arrayTitle objectAtIndex:    idx] forKey:@"title"];
        
        NSString * value = [arrayValues objectAtIndex:idx];
        
        if ([value isEqualToString:@"clubs"]) {
            [dict setObject: stringDisClubs forKey: @"discr"];
        }
        else if ([value isEqualToString:@"bars"]){
            [dict setObject: stringDisBars forKey:@"discr"];
        }
        else if ([value isEqualToString:@"restorants"]){
            [dict setObject: stringDisRestorants forKey:@"discr"];
        }
        else if ([value isEqualToString:@"pabs"]){
            [dict setObject: stringDisPubs forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"cafe"]){
            [dict setObject: stringDisCafe forKey:@"discr"];
        }
        [arrayMainMutable addObject:dict];
        
        i++;
        
        if (stop && i == arrayValues.count) {
            
NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:arrayMainMutable, ARRAY_KEY, nil];
            
[NSNotificationCenter call_Notif:ARRAY_NOTIF Dictionary:dict];
            
            
UILabel * lbl = [[UILabel alloc] init];
            lbl.font = [UIFont fontWithName:MAIN_FONT size:MAIN_SIZE];
            
[self.delegate makeArrayGetPlacesArrayReady: self PlacesArray:arrayMainMutable];
            
            
//         NSLog(@"if  %i, %i", i, arrayM.count);
//            NSLog(@"предварительная печать ВТОРОГО массива %@", arrayM);

        }
    }];
    
  //    return arrayM;
 }


@end
