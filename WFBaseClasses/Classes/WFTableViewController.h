//
//  WFTableViewController.h
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface WFTableViewController : WFViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readonly) UITableViewStyle style;

@property (nonatomic, strong, readonly) UITableView *tableView;

- (instancetype)initWithStyle:(UITableViewStyle)style;

@end

UIKIT_EXTERN NSString *const kTableViewCellId;

NS_ASSUME_NONNULL_END
