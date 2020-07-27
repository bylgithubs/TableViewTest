//
//  TestCell.h
//  TableViewTest
//
//  Created by Civet on 2020/7/24.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestCell : UITableViewCell

@property (nonatomic,strong) NSMutableArray *dataArr;
@property (nonatomic,strong) UILabel *displayLabel;
@property (nonatomic,strong) UIButton *clickBtn;

-(void)configuration:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
