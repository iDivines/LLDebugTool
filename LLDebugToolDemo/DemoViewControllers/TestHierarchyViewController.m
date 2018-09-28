//
//  TestHierarchyViewController.m
//  LLDebugToolDemo
//
//  Created by admin10000 on 2018/9/28.
//  Copyright © 2018年 li. All rights reserved.
//

#import "TestHierarchyViewController.h"
#import "LLHierarchyHelper.h"

@interface TestHierarchyViewController ()

@end

@implementation TestHierarchyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"test.hierarchy", nil);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) {
//        cell.textLabel.text = NSLocalizedString(@"insert.log", nil);
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        [self testAllWindowHierarchy];
    }
}

#pragma mark - Actions
- (void)testAllWindowHierarchy {
    NSArray *array = [[LLHierarchyHelper sharedHelper] allWindows];
    NSArray *array2 = [[LLHierarchyHelper sharedHelper] allViewsInHierarchy];
    NSLog(@"%@",array);
}

@end