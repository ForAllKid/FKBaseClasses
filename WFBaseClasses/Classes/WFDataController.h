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

- (void)controllerDidLoad NS_REQUIRES_SUPER;

- (void)didReceiveMemoryWarning NS_REQUIRES_SUPER  NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, "弃用，因为在重写init的情况下会造成方法调用顺序的问题i");

@end

//MARK: -

@protocol WFDataControllerInitializer <NSObject>

@optional

- (void)initialCommands;

- (void)initialSignals;

@end

NS_ASSUME_NONNULL_END
