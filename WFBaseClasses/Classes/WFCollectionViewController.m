//
//  WFCollectionViewController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFCollectionViewController.h"

NSString *const kCollectionViewCellId = @"kCollectionViewCellId";

@interface WFCollectionViewController (){
    UICollectionViewFlowLayout *_layout;
}

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation WFCollectionViewController


//MARK: LifeCycle

- (instancetype)initWithLayout:(UICollectionViewFlowLayout *)layout{
    self = [super init];
    if (self) {
        _layout = layout;
    }
    return self;
}

- (instancetype)init {
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.itemSize = UIScreen.mainScreen.bounds.size;
    layout.minimumLineSpacing = 0.f;
    layout.minimumInteritemSpacing = 0.f;
    return [self initWithLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: Override

//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

- (void)configUISet{
    [super configUISet];
    [self.view addSubview:self.collectionView];
}

//MARK: Delegate && DataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellId forIndexPath:indexPath];
}



//MARK: Actions

//MARK: Layout

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

//MARK: NotificationCenter

//MARK: Observer

//MARK: Setter

//MARK: Getter

- (UICollectionView *)collectionView {
    if (!_collectionView) {
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:_layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:UICollectionViewCell.class
            forCellWithReuseIdentifier:kCollectionViewCellId];
    }
    return _collectionView;
}

- (UICollectionViewFlowLayout *)layout {
    return _layout;
}


@end
