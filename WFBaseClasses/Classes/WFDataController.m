//
//  WFDataController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFDataController.h"

@interface WFDataController ()

@end

@implementation WFDataController


//MARK: LifeCycle

+ (void)initialize {
    [super initialize];
    [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(didReceiveMemoryWarning) name:UIApplicationDidReceiveMemoryWarningNotification object:nil];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self controllerDidLoad];
    }
    return self;
}

- (void)controllerDidLoad {
    
}

- (void)dealloc {
    NSLog(@"the %@ data controller deallocted", NSStringFromClass(self.class));
}

//MARK: Override


//MARK: NetworkControl


//MARK: Delegate

//MARK: Actions

- (void)didReceiveMemoryWarning {
    
}

//MARK: NotificationCenter

//MARK: Observer

//MARK: Setter

//MARK: Getter








@end
