//
//  WFCollectionViewController.h
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface WFCollectionViewController : WFViewController
<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong, readonly) UICollectionViewFlowLayout *layout;

@property (nonatomic, strong, readonly) UICollectionView *collectionView;

- (instancetype)initWithLayout:(UICollectionViewFlowLayout *)layout;

@end

UIKIT_EXTERN NSString *const kCollectionViewCellId;

NS_ASSUME_NONNULL_END
