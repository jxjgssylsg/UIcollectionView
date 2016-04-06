//
//  ViewController.m
//  UIcollectionView
//
//  Created by mingdffe on 16/4/6.
//  Copyright © 2016年 boxfish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    
    UICollectionView *colView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    colView.backgroundColor = [UIColor grayColor];
    [colView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"myCell"];
    colView.delegate = (id)self;
    colView.dataSource = (id)self;
    //[colView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"myCell"];
    
    [self.view addSubview:colView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)loadData {
    NSArray *arr = [NSArray arrayWithObjects:@"cell", @"cell2", @"cell3", @"cell4", @"cell5", @"cell6", @"cell7",@"cell8",@"cell9",nil];
    
    return arr;
}
#pragma mark - UICollectionViewDatasource

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [[self loadData] count];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"myCell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}

//配置item的size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return CGSizeMake(100, 60);
}

//配置item的边距
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(120, 80, 0, 0);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
