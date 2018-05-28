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

/**
 控制器加载完成
 NOTE:该方法已弃用
 */
- (void)controllerDidLoad NS_REQUIRES_SUPER NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "弃用，因为在重写init的情况下会造成方法调用顺序的问题，尽量将API迁移到init方法");


/**
 收到内存警告会触发该方法，该方法会在类初始化的时候注册一个内存警告通知
 */
- (void)didReceiveMemoryWarning NS_REQUIRES_SUPER;

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
