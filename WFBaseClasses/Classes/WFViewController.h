//
//  WFViewController.h
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WFViewController : UIViewController

@property (nonatomic, strong) UILabel *titleLabel;

- (void)bind NS_REQUIRES_SUPER;
- (void)configUISet NS_REQUIRES_SUPER;

@end

NS_ASSUME_NONNULL_END
