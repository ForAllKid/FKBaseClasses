//
//  WFScrollViewController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFScrollViewController.h"

@interface WFScrollViewController ()

@property (nonatomic, strong, readwrite) UIScrollView *scrollView;

@end

@implementation WFScrollViewController


//MARK: LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: Override


//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

- (void)configUISet{
    [super configUISet];
    [self.view addSubview:self.scrollView];
}

//MARK: Delegate && DataSource

//MARK: Actions

//MARK: Layout

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.scrollView.frame = self.view.bounds;
}

//MARK: NotificationCenter

//MARK: Observer

//MARK: Setter

//MARK: Getter

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        _scrollView.contentSize = self.view.bounds.size;
        _scrollView.alwaysBounceVertical = YES;
        _scrollView.delaysContentTouches = NO;
        _scrollView.canCancelContentTouches = NO;
    }
    return _scrollView;
}

@end
