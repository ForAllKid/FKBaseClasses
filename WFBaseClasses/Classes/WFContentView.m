//
//  WFContentView.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/15.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFContentView.h"

@implementation WFContentView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.alwaysBounceVertical = YES;
        self.delaysContentTouches = NO;
    }
    return self;
}

@end
