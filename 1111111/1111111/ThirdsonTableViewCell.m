//
//  ThirdsonTableViewCell.m
//  1111111
//
//  Created by young_jerry on 2020/9/5.
//  Copyright © 2020 young_jerry. All rights reserved.
//

#import "ThirdsonTableViewCell.h"

@implementation ThirdsonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([reuseIdentifier isEqualToString:@"111"]){
        _idLabel = [[UILabel alloc]init];
        _positionLabel = [[UILabel alloc]init];
        _timeLabel = [[UILabel alloc]init];
        _pictureImageView = [[UIImageView alloc]init];
        _headImageView = [[UIImageView alloc]init];
        _contentLabel = [[UILabel alloc]init];
        [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_headImageView];
        [self.contentView addSubview:_pictureImageView];
        [self.contentView addSubview:_idLabel];
        [self.contentView addSubview:_positionLabel];
        [self.contentView addSubview:_timeLabel];
    }else{
        _idLabel = [[UILabel alloc]init];
        _positionLabel = [[UILabel alloc]init];
        _timeLabel = [[UILabel alloc]init];
        _pictureImageView = [[UIImageView alloc]init];
        _headImageView = [[UIImageView alloc]init];
        _towPictureImageView = [[UIImageView alloc]init];
        _contentLabel = [[UILabel alloc]init];
        [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_towPictureImageView];
        [self.contentView addSubview:_headImageView];
        [self.contentView addSubview:_pictureImageView];
        [self.contentView addSubview:_idLabel];
        [self.contentView addSubview:_positionLabel];
        [self.contentView addSubview:_timeLabel];
    }
    return self;
}
-(void)layoutSubviews{
    _towPictureImageView.frame = CGRectMake(180, 80, 114, 150);
    _pictureImageView.frame = CGRectMake(60 , 80, 114, 150);
    _headImageView.frame = CGRectMake(10, 5, 30, 30);
    
    _idLabel.font = [UIFont systemFontOfSize:12];
      _positionLabel.font = [UIFont systemFontOfSize:10];
      _timeLabel.font = [UIFont systemFontOfSize:10];
    _contentLabel.font = [UIFont systemFontOfSize:15];
    
    _contentLabel.frame = CGRectMake(60, 30, 300, 50);
    _idLabel.frame = CGRectMake(60, 5, 150, 10);
    _positionLabel.frame = CGRectMake(60, 230, 150, 50);
     _timeLabel.frame = CGRectMake(60, 240, 150, 50);
}
@end
