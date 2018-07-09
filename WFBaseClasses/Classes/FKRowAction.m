//
//  FKRowAction.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/22.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "FKRowAction.h"

@implementation WFRowActionConfig

- (instancetype)init{
    self = [super init];
    if (self) {
        _editable = YES;
        _accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return self;
}

/// simple copy
- (id)copyWithZone:(NSZone *)zone {
    typeof(self) one = [[self.class allocWithZone:zone] init];
    one->_title = _title.copy;
    one->_subtitle = _subtitle.copy;
    one->_icon = _icon.copy;
    one->_accessoryType = _accessoryType;
    one->_placeholder = _placeholder.copy;
    one->_editable = _editable;
    one->_parameterKey = _parameterKey.copy;
    one->_keyboardType = _keyboardType;
    return one;
}

@end

@implementation FKRowAction

+ (FKRowAction *)actionWithConfig:(WFRowActionConfig *)config
                          handler:(FKRowActionHandler)handler {
    
    FKRowAction *one = [[FKRowAction alloc] init];
    one->_config = config.copy;
    one->_handler = handler;
    return one;
}

- (id)copyWithZone:(NSZone *)zone {
    typeof(self) one = [[[self class] allocWithZone:zone] init];
    one->_config = _config.copy;
    one->_handler = _handler;
    return one;
}

@end


@implementation FKGroupedRowAction

- (id)copyWithZone:(NSZone *)zone {
    FKGroupedRowAction *one = [[[self class] allocWithZone:zone] init];
    one->_actions = _actions.copy;
    one->_headerTitle = _headerTitle.copy;
    one->_footerTitle = _footerTitle.copy;
    one->_headerHeight = _headerHeight;
    one->_footerHeight = _footerHeight;
    return one;
}

@end
