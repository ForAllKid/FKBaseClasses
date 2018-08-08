//
//  WFDataController.h
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

@import UIKit;

@protocol WFDataControllerInitializer;

NS_ASSUME_NONNULL_BEGIN

@interface WFDataController : NSObject

@end

//MARK: -

@protocol WFDataControllerInitializer <NSObject>

@optional

/**
 初始化RACCommand
 */
- (void)initialCommands;

/**
 初始化RACSignal
 */
- (void)initialSignals;

/**
 取消所有的请求
 */
- (void)cancelAllRequest;

/**
 销毁所有的timer
 */
- (void)distoryTimers;

@end

NS_ASSUME_NONNULL_END
