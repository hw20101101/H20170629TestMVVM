//
//  HomeViewController.m
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewCell.h"
#import "HomeViewModel.h"
#import "HomeModel.h"

@interface HomeViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self makeDataSource];
    [self.tableView registerNib:[UINib nibWithNibName:@"HomeViewCell" bundle:nil] forCellReuseIdentifier:@"HomeViewCell"];
    [self.tableView reloadData];
}

- (NSArray *)dataSource{
    if (!_dataSource) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

- (void)makeDataSource{
    
    for (int i = 0; i < 5; i++) {
        HomeViewModel *viewModel = [HomeViewModel new];
        viewModel.model = [HomeModel new];
        [self.dataSource addObject:viewModel];
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 85;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeViewCell"];
    HomeViewModel *viewModel = self.dataSource[indexPath.row];
    cell.viewModel = viewModel;
    return cell;
}

@end
