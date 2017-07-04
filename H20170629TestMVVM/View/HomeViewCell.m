//
//  HomeViewCell.m
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import "HomeViewCell.h"

@implementation HomeViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self hw_bindViewModel];
}

- (void)hw_bindViewModel{
    RAC(self.titleLabel, text) = RACObserve(self, viewModel.title);
    RAC(self.subTitleLabel, text) = RACObserve(self, viewModel.subTitle);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
