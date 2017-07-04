//
//  HomeViewModel.m
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel

- (instancetype)init{
    if (self = [super init]) {
        [self hw_bindModel];
    }
    return self;
}

- (void)hw_bindModel{
    [RACObserve(self, model.title) subscribeNext:^(id x) {
        self.title = x;
    }];
    
    [RACObserve(self, model.subTitle) subscribeNext:^(id x) {
        self.subTitle = x;
    }];
}

@end
