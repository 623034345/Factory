//
//  ViewController.m
//  FYJ_Factory
//
//  Created by Macintosh HD on 2017/2/28.
//  Copyright © 2017年 Macintosh HD. All rights reserved.
//

#import "ViewController.h"
#import "SwipeTableView.h"
#import "UIView+STFrame.h"
#import <objc/message.h>
#import "HHHorizontalPagingView.h"
@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation ViewController
static NSString *collectionViewCellIdentifier = @"collectionViewCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    headerView.backgroundColor = [UIColor redColor];
    
    NSMutableArray *viewArr = [NSMutableArray array];
    for (int i = 0; i < 4; i ++ ) {
        _collectionView = [self contentCollectionView];
        _collectionView.tag = i;
        [viewArr addObject:_collectionView];
    }
    
    NSMutableArray *buttonArray = [NSMutableArray array];
    for(int i = 0; i < 4; i++) {
        UIButton *segmentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [segmentButton setBackgroundImage:[UIImage imageNamed:@"button_normal"] forState:UIControlStateNormal];
        [segmentButton setBackgroundImage:[UIImage imageNamed:@"button_selected"] forState:UIControlStateSelected];
        [segmentButton setTitle:[NSString stringWithFormat:@"view%@",@(i)] forState:UIControlStateNormal];
        [segmentButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        [buttonArray addObject:segmentButton];
    }
    HHHorizontalPagingView *pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:headerView headerHeight:300.f segmentButtons:buttonArray segmentHeight:60 contentViews:@[viewArr[0], viewArr[1], viewArr[2],viewArr[3]]];
    //    pagingView.segmentButtonSize = CGSizeMake(60., 30.);              //自定义segmentButton的大小
    //    pagingView.segmentView.backgroundColor = [UIColor grayColor];     //设置segmentView的背景色
    
    //设置需放大头图的top约束
    /*
     pagingView.magnifyTopConstraint = headerView.headerTopConstraint;
     [headerView.headerImageView setImage:[UIImage imageNamed:@"headerImage"]];
     [headerView.headerImageView setContentMode:UIViewContentModeScaleAspectFill];
     */
    
    [self.view addSubview:pagingView];
}
- (UICollectionView *)contentCollectionView {
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    layout.itemSize = CGSizeMake(100, 100);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    _collectionView.backgroundColor = [UIColor clearColor];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:collectionViewCellIdentifier];
    
    return _collectionView;
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"这是第几个%ld",self.collectionView.tag);
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = (UICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:collectionViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor lightGrayColor];
    
    return cell;
    
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
