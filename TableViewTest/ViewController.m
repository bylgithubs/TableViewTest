//
//  ViewController.m
//  TableViewTest
//
//  Created by Civet on 2020/7/24.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *dataArr;

@end

@implementation ViewController
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.dataArr = [[NSMutableArray alloc] init];
    [self.dataArr addObject:@"test"];
//    //使用xib文件加载cell
//    [tableView registerNib:[UINib nibWithNibName:NSStringFromClass([TestCell class]) bundle:nil] forCellReuseIdentifier:@"TestCell"];
//    //使用纯代码加载cell
//    [tableView registerClass:[TestCell class] forCellReuseIdentifier:@"TestCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[TestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
//    else{
//        NSArray *arr = cell.contentView.subviews;
//        NSArray *arr1 = cell.subviews;
//        for (int i = 1; i < arr1.count-1; i++) {
//            [arr1[i] removeFromSuperview];
//        }
//        NSArray *arr2 = cell.subviews;
//        NSArray *arr3 = cell.contentView.subviews;
//        //[(UIView *)[cell.contentView.subviews lastObject] removeFromSuperview];
////        while ([cell.contentView.subviews lastObject] != nil) {
////            [(UIView *)[cell.contentView.subviews lastObject] removeFromSuperview];
////        }
//    }
    cell.dataArr = self.dataArr;
    
    [cell configuration:indexPath];
    //cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}



@end
