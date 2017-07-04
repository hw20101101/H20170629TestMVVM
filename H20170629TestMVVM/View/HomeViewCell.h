//
//  HomeViewCell.h
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewModel.h"

@interface HomeViewCell : UITableViewCell

@property (nonatomic, strong) HomeViewModel *viewModel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end
