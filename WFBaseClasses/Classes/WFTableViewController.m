//
//  WFTableViewController.m
//  WFBaseClasses
//
//  Created by 周宏辉 on 2018/5/2.
//  Copyright © 2018年 Wefint. All rights reserved.
//

#import "WFTableViewController.h"

NSString *const kTableViewCellId = @"kTableViewCellId";

@interface WFTableViewController (){
    UITableViewStyle _style;
}

@property (nonatomic, strong, readwrite) UITableView *tableView;

@end

@implementation WFTableViewController

//MARK: LifeCycle

- (instancetype)initWithStyle:(UITableViewStyle)style{
    self = [super init];
    if (self) {
        _style = style;
    }
    return self;
}

- (instancetype)init {
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//MARK: Override

//MARK: VMBind

//MARK: NetworkControl

//MARK: UISet

- (void)configUISet{
    [super configUISet];
    [self.view addSubview:self.tableView];
}

//MARK: Delegate && DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:kTableViewCellId forIndexPath:indexPath];
}

//MARK: Actions

//MARK: Layout

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

//MARK: NotificationCenter

//MARK: Observer

//MARK: Setter

//MARK: Getter

- (UITableViewStyle)style {
    return self.tableView.style;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:_style];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorInset = UIEdgeInsetsZero;
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 1.f, 0.01f)];
        _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 1.f, 0.01f)];
        [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:kTableViewCellId];
    }
    return _tableView;
}

@end
