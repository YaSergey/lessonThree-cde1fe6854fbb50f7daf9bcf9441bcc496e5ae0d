//
//  MakeArrays.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 12.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "MakeArrays.h"

@implementation MakeArrays

+ (NSMutableArray *) makeFirstArray {

    NSMutableArray * arrayM = [[NSMutableArray alloc]init];
    
    NSString * stringValues = @"cola,pepsi,wisky,vine,coctails";
    NSString * stringPrices = @"100,120,300,400,600";
    NSString * stringFortres = @"безалкогольный,безалкогольный,крепкий,крепкий,средний";
    NSString * stringTitle = @"drink coke напитки компании кокакола производятся в америке,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    
    NSString *stringDisCola = @"Напиток «Кока-кола» был придуман в Атланте (штат Джорджия, США) 8 мая 1886 года фармацевтом Джоном Ститом Пембертоном — бывшим офицером американской Армии конфедерации (есть легенда, что его придумал фермер, который продал свой рецепт Джону Ститу за 250 $, о чём Джон Стит якобы сказал в одном из своих интервью). Название для нового напитка придумал бухгалтер Пембертона — Фрэнк Робинсон, который также, владея каллиграфией, написал слова «Coca-Cola» фигурными буквами, до сих пор являющимися логотипом напитка";
    NSString *stringDisPepsi = @"Пепси-колу» придумал в 1898 году американский фармацевт Калеб Брэдхем из Нью-Берна. В состав газировки, которую он назвал «Напиток Брэда», входили пепсин и экстракт орехов колы. Он также приписывал газировке целебные свойства и уверял, что пепсин способствует пищеварению. Привычное название и широкое признание «Пепси-Кола» получила в 1903 году. В 1964 году «Пепси» выпустила диетическую газировку.";
    NSString *stringDisWisky = @"Ви́ски (англ. whisky или whiskey) — крепкий ароматный алкогольный напиток, получаемый из различных видов зерна с использованием процессов соложения, перегонки и длительного выдерживания в дубовых бочках. При изготовлении виски может использоваться ячмень, рожь, пшеница или кукуруза. В Бретани также делают виски из гречихи. Содержание спирта — обычно 32—50 % об., однако некоторые сорта виски имеют бо́льшую крепость (до 60 % об.). Цвет напитка варьируется от светло-жёлтого до коричневого, содержание сахара — нулевое или крайне незначительное. Традиционными регионами, производящими виски, являются Шотландия и Ирландия.";
    NSString *stringDisBoorbon = @"Бурбо́н вид виски, производится в США. Бурбон появился в конце XVIII начале XIX века в городе Парис (округ Бурбон, штат Кентукки, США)[1]. Точнее, 1821 годом датируется первая сохранившаяся реклама нового напитка с таким названием. Сам рецепт был известен и ранее: как минимум с 1789 года преподобный Элайя Крейг дистиллировал похожий напиток для нужд своих прихожан";
    NSString *stringDisCoctails = @"Б-52 коктейль (относится к категории коктейлей pousse café), состоящий из трёх наслоённых ликёров. В правильно приготовленном коктейле кофейный ликёр (например, Kahlúa), ликёр Бейлис и ликёр Cointreau (либо Трипл-сек) не смешиваются и создают три хорошо видимых слоя";

    
    NSArray * arrayValues = [stringValues componentsSeparatedByString:@","];
    NSArray * arrayPrices = [stringPrices componentsSeparatedByString:@","];
    NSArray * arrayFortres = [stringFortres componentsSeparatedByString:@","];
    NSArray * arrayTitle = [stringTitle componentsSeparatedByString:@","];
    
    for (int i=0; i < arrayPrices.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[arrayPrices objectAtIndex:   i] forKey:@"price"];
        [dict setObject:[arrayValues objectAtIndex:   i] forKey:@"value"];
        [dict setObject:[arrayFortres objectAtIndex:  i] forKey:@"fortres"];
        [dict setObject:[arrayTitle objectAtIndex:    i] forKey:@"title"];
        
        NSString * value = [arrayValues objectAtIndex:i];
        
        if ([value isEqualToString:@"cola"]) {
            [dict setObject: stringDisCola forKey:@"discr"];
        }
        else if ([value isEqualToString:@"pepsi"]){
            [dict setObject: stringDisPepsi forKey:@"discr"];
        }
        else if ([value isEqualToString:@"wisky"]){
            [dict setObject: stringDisWisky forKey:@"discr"];
        }
        else if ([value isEqualToString:@"vine"]){
            [dict setObject: stringDisBoorbon forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"coctails"]){
            [dict setObject: stringDisCoctails forKey:@"discr"];
        }
        [arrayM addObject:dict];
    }
    return arrayM;
    
   }

+ (NSMutableArray *) makeSecondArray {
    
    NSMutableArray * arrayM = [[NSMutableArray alloc]init];
    
    NSString * stringValues = @"clubs,restorants,bars,pabs,cafe";
    NSString * stringPrices = @"1000,1200,3000,4000,6000";
    NSString * stringFortres = @"все включено,крепкий алкоголь,только вино,только пиво,лимонад";
    NSString * stringTitle = @"drink coke напитки компании кокакола производятся в америке,бери от жизни все а когда нечего брать бери пепси,два по 50 лучший варинат для соблазнения ,ален делон не пьет адеколон он пьет двойной бурбон,даже и не думай брать эту гадость";
    
    NSString *stringDisCola = @"Напиток «Кока-кола» был придуман в Атланте (штат Джорджия, США) 8 мая 1886 года фармацевтом Джоном Ститом Пембертоном — бывшим офицером американской Армии конфедерации (есть легенда, что его придумал фермер, который продал свой рецепт Джону Ститу за 250 $, о чём Джон Стит якобы сказал в одном из своих интервью). Название для нового напитка придумал бухгалтер Пембертона — Фрэнк Робинсон, который также, владея каллиграфией, написал слова «Coca-Cola» фигурными буквами, до сих пор являющимися логотипом напитка";
    NSString *stringDisPepsi = @"Пепси-колу» придумал в 1898 году американский фармацевт Калеб Брэдхем из Нью-Берна. В состав газировки, которую он назвал «Напиток Брэда», входили пепсин и экстракт орехов колы. Он также приписывал газировке целебные свойства и уверял, что пепсин способствует пищеварению. Привычное название и широкое признание «Пепси-Кола» получила в 1903 году. В 1964 году «Пепси» выпустила диетическую газировку.";
    NSString *stringDisWisky = @"Ви́ски (англ. whisky или whiskey) — крепкий ароматный алкогольный напиток, получаемый из различных видов зерна с использованием процессов соложения, перегонки и длительного выдерживания в дубовых бочках. При изготовлении виски может использоваться ячмень, рожь, пшеница или кукуруза. В Бретани также делают виски из гречихи. Содержание спирта — обычно 32—50 % об., однако некоторые сорта виски имеют бо́льшую крепость (до 60 % об.). Цвет напитка варьируется от светло-жёлтого до коричневого, содержание сахара — нулевое или крайне незначительное. Традиционными регионами, производящими виски, являются Шотландия и Ирландия.";
    NSString *stringDisBoorbon = @"Бурбо́н вид виски, производится в США. Бурбон появился в конце XVIII начале XIX века в городе Парис (округ Бурбон, штат Кентукки, США)[1]. Точнее, 1821 годом датируется первая сохранившаяся реклама нового напитка с таким названием. Сам рецепт был известен и ранее: как минимум с 1789 года преподобный Элайя Крейг дистиллировал похожий напиток для нужд своих прихожан";
    NSString *stringDisCoctails = @"Б-52 коктейль (относится к категории коктейлей pousse café), состоящий из трёх наслоённых ликёров. В правильно приготовленном коктейле кофейный ликёр (например, Kahlúa), ликёр Бейлис и ликёр Cointreau (либо Трипл-сек) не смешиваются и создают три хорошо видимых слоя";

    
    NSArray * arrayValues = [stringValues componentsSeparatedByString:@","];
    NSArray * arrayPrices = [stringPrices componentsSeparatedByString:@","];
    NSArray * arrayFortres = [stringFortres componentsSeparatedByString:@","];
    NSArray * arrayTitle = [stringTitle componentsSeparatedByString:@","];
    
    for (int i=0; i < arrayPrices.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[arrayPrices objectAtIndex:   i] forKey:@"price"];
        [dict setObject:[arrayValues objectAtIndex:   i] forKey:@"value"];
        [dict setObject:[arrayFortres objectAtIndex:  i] forKey:@"fortres"];
        [dict setObject:[arrayTitle objectAtIndex:    i] forKey:@"title"];
        
        NSString * value = [arrayValues objectAtIndex:i];
        
        if ([value isEqualToString:@"clubs"]) {
            [dict setObject: stringDisCola forKey:@"discr"];
        }
        else if ([value isEqualToString:@"bars"]){
            [dict setObject: stringDisPepsi forKey:@"discr"];
        }
        else if ([value isEqualToString:@"restorants"]){
            [dict setObject: stringDisWisky forKey:@"discr"];
        }
        else if ([value isEqualToString:@"pabs"]){
            [dict setObject: stringDisBoorbon forKey:@"discr"];
        }
        
        else if ([value isEqualToString:@"cafe"]){
            [dict setObject: stringDisCoctails forKey:@"discr"];
        }
        [arrayM addObject:dict];
    }
    return arrayM;
 }


@end
