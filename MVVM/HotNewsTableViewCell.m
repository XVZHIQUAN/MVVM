//
//  HotNewsTableViewCell.m
//  MVVM
//
//  Created by Guen on 16/5/20.
//  Copyright © 2016年 Gemall. All rights reserved.
//

#import "HotNewsTableViewCell.h"
@interface HotNewsTableViewCell()

@property (strong, nonatomic) UIImageView *picView;

@property (strong, nonatomic) UILabel *titleLabel;

@property(nonatomic,strong) UILabel *descLabel;

@end

@implementation HotNewsTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    _picView = [[UIImageView alloc]init];
    [self.contentView addSubview:_picView];
    [_picView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.and.top.equalTo(self.contentView).with.offset(10);
        make.size.mas_equalTo(CGSizeMake(110, 90));
    }];
    
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.numberOfLines = 0;
    [self.contentView addSubview:_titleLabel];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_picView.mas_trailing).with.offset(10);
        make.trailing.equalTo(self.contentView).with.offset(-10);
        make.top.equalTo(self.contentView).with.offset(10);
        make.height.mas_equalTo(@40);
    }];
    
    _descLabel = [[UILabel alloc]init];
    _descLabel.font = [UIFont systemFontOfSize:12];
    _descLabel.textColor = [UIColor grayColor];
    _descLabel.textAlignment = 2;
    [self.contentView addSubview:_descLabel];
    [_descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).with.offset(-10);
        make.bottom.equalTo(self.contentView).with.offset(-10);
        make.leading.equalTo(self.contentView).with.offset(10);
        make.height.mas_equalTo(@15);
    }];
}


- (void)setModel:(HotNewsModel *)model{
    _model = model;
    [_picView sd_setImageWithURL:[NSURL URLWithString:_model.picUrl]];
    
    _titleLabel.text = _model.title;
    
//    _descLabel.text = _model.desc;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
