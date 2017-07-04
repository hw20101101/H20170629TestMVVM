//
//  HomeViewModel.m
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel

- (void)setModel:(HomeModel *)model{
    
    _model = model;
    [_model addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial context:@"1"];
    [_model addObserver:self forKeyPath:@"subTitle" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionInitial context:@"2"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
 
    if (context == @"1") {
        _title2 = change[NSKeyValueChangeNewKey];
    } else {
        _subTitle2 = change[NSKeyValueChangeNewKey];
    }
}

- (void)dealloc{
    
    [_model removeObserver:self forKeyPath:@"title"];
    [_model removeObserver:self forKeyPath:@"subTitle"];
}

@end
