//
//  TestCell.m
//  TableViewTest
//
//  Created by Civet on 2020/7/24.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "TestCell.h"

@implementation TestCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI{
    self.displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 45, 30)];
    //self.displayLabel.text = self.dataArr[0];
    [self addSubview:self.displayLabel];
    self.clickBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.clickBtn.frame = CGRectMake(200, 10, 60, 30);
    //[self.clickBtn setTitle:@"按钮" forState:UIControlStateNormal];
    [self.clickBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self addSubview:self.clickBtn];
}

-(void)configuration:(NSIndexPath *)indexPath{
    if (self.dataArr.count > 0&&indexPath.row%2 == 0) {
        self.displayLabel.text = self.dataArr[0];
    }else{
        //self.displayLabel.text = @"";
        [self.clickBtn setTitle:[NSString stringWithFormat:@"按钮%ld",indexPath.row] forState:UIControlStateNormal];
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//重写该方法，cell出队列后调用此方法，对cell的视图和数据进行处理，防止cell重用出现数据混乱
- (void)prepareForReuse
{
    [super prepareForReuse];
    self.displayLabel.text = @"";
    [self.clickBtn setTitle:@"" forState:UIControlStateNormal];
}

@end
