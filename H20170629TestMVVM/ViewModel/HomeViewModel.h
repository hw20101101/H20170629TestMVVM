//
//  HomeViewModel.h
//  H20170629TestMVVM
//
//  Created by hw on 30/06/2017.
//  Copyright © 2017 GaiaMagic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeModel.h"

@interface HomeViewModel : NSObject

@property (nonatomic, strong) HomeModel *model;
@property (nonatomic, strong) NSString *title2;
@property (nonatomic, strong) NSString *subTitle2;

@end
