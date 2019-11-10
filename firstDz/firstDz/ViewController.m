//
//  ViewController.m
//  firstDz
//
//  Created by Арсений Ермилов   on 26/09/2019.
//  Copyright © 2019 ArsIndustries. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *mutArr = [NSMutableArray arrayWithObjects:@(3),@(6),@(32),@(24),@(81), nil];
    [self firstTask: mutArr];
    NSMutableArray *mutArrWithStrings = [NSMutableArray arrayWithObjects:@"cataclism", @"catepillar", @"cat", @"teapot", @"truncate", nil];
    [self secondTask:mutArrWithStrings];
    // Do any additional setup after loading the view.
}
- (NSArray *) firstTask : (NSMutableArray *) arr
{
    NSArray *sortedArray = [arr sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@", sortedArray);
    NSMutableArray *newArr = [NSMutableArray new];
    for (int i = 21; i < 30; i++)
    {
        [newArr addObject:@(i)];
    }
    NSMutableArray *arrWithThree = [NSMutableArray new];
    for (int i = 0; i < 20; i++)
    {
        if (i % 3 != 0)
        {
            continue;
        }
        [arrWithThree addObject:@(i)];
    }
    NSArray *mergedArray = [arr arrayByAddingObjectsFromArray:arrWithThree];
    NSSortDescriptor* sortOrder = [NSSortDescriptor sortDescriptorWithKey: @"self"
                                                                ascending: NO];
    return [mergedArray sortedArrayUsingDescriptors:[NSArray arrayWithObject:sortOrder]];
    
}
- (void) secondTask : (NSMutableArray *) arr
{
    NSMutableArray *discardedItems = [NSMutableArray array];
    for (NSString *iter in arr)
    {
        if(![iter hasPrefix: @"cat"])
        {
            [discardedItems addObject:iter];
        }
    }
    [arr removeObjectsInArray:discardedItems] ;
    NSLog(@"only catsprefix array : %@", arr);
    NSMutableDictionary *animalDict = [[NSMutableDictionary alloc] init];
    for( NSString * iter in arr)
    {
        [animalDict setValue:[NSNumber numberWithInt:(int)iter.length] forKey:iter];
    }
    NSLog(@"dictionary : %@", animalDict);
}


@end
