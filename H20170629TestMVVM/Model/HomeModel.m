//
//  HomeModel.m
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import "HomeModel.h"

@implementation HomeModel

- (instancetype)init{
    
    if (self = [super init]) {
        _title = [NSString stringWithFormat:@"这是标题 %d", arc4random()];
        _subTitle = [NSString stringWithFormat:@"这是副标题... %d", arc4random()];
    }
    return self;
}

@end
