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

- (BOOL)prefersStatusBarHidden {
    return self.topViewController ? self.topViewController.prefersStatusBarHidden : NO;
}

//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

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
