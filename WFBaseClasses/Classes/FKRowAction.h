//
//  FKRowAction.h
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/22.
//  Copyright © 2018年 Wefint. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface FKRowActionConfig : NSObject<NSCopying>

///< title
@property (nullable, nonatomic, copy) NSString *title;

///< subtitle
@property (nullable, nonatomic, copy) NSString *subtitle;

///< icon
@property (nullable, nonatomic, copy) UIImage *icon;

///< default is indicator
@property (nonatomic) UITableViewCellAccessoryType accessoryType;

///< placeholder
@property (nullable, nonatomic, copy) NSString *placeholder;

///< editable
@property (nonatomic, getter=isEditable) BOOL editable;

@end

@class FKRowAction;

typedef void(^FKRowActionHandler)(FKRowAction *action);

@interface FKRowAction : NSObject <NSCopying>

@property (nullable, nonatomic, copy, readonly) FKRowActionConfig *config;

@property (nullable, nonatomic, copy, readonly) FKRowActionHandler handler;

+ (FKRowAction *)actionWithConfig:(nullable FKRowActionConfig *)config
                          handler:(nullable FKRowActionHandler)handler;


@end

//MARK: -

@interface FKGroupedRowAction : NSObject <NSCopying>

@property (nullable, nonatomic, strong, readonly) NSArray <FKRowAction *> *actions;

@property (nullable, nonatomic, copy) NSString *headerTitle;
@property (nullable, nonatomic, copy) NSString *footerTitle;

@property (nonatomic) CGFloat headerHeight;
@property (nonatomic) CGFloat footerHeight;

@end

NS_ASSUME_NONNULL_END
