//
//  WFNavigationController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFNavigationController.h"

@interface WFNavigationController ()

@end

@implementation WFNavigationController


//MARK: LifeCycle

+ (WFNavigationController *)initWithViewController:(UIViewController *)controller {
    NSAssert([controller isKindOfClass:UINavigationController.class] == NO, @"no~");
    WFNavigationController *nav = [[WFNavigationController alloc] initWithRootViewController:controller];
    return nav;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUISet];
}

//MARK: Override

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.topViewController ? self.topViewController.preferredInterfaceOrientationForPresentation : UIInterfaceOrientationPortrait;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController ? self.topViewController.supportedInterfaceOrientations : UIInterfaceOrientationMaskPortrait;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topViewController ? self.topViewController.preferredStatusBarStyle : UIStatusBarStyleLightContent;
}

- (CGSize)preferredContentSize {
    if (self.topViewController) {
        return self.topViewController.preferredContentSize;
    }
    return UIScreen.mainScreen.bounds.size;
}

- (BOOL)prefersStatusBarHidden {
    return self.topViewController ? self.topViewController.prefersStatusBarHidden : NO;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count == 1) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

- (void)configUISet {
    self.navigationBar.translucent = NO;
    self.toolbar.translucent = NO;
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
