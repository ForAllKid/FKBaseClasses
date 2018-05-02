//
//  WFViewController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFViewController.h"

@interface WFViewController ()

@end

@implementation WFViewController

//MARK: LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUISet];
}

- (void)dealloc{
    NSLog(@"the %@ view controller deallocted", NSStringFromClass(self.class));
}

//MARK: Override

- (void)bind {
    
}

//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

- (void)configUISet{
    self.view.backgroundColor = UIColor.whiteColor;
}

//MARK: Delegate && DataSource

//MARK: Actions

//MARK: Layout

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
}

//MARK: NotificationCenter

//MARK: Observer

//MARK: Setter

//MARK: Getter



@end
