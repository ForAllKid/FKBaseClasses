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

- (void)didReceiveMemoryWarning NS_REQUIRES_SUPER;

@end

//MARK: -

@protocol WFDataControllerInitializer <NSObject>

- (void)initialCommands;

- (void)initialSignals;

@end

NS_ASSUME_NONNULL_END
