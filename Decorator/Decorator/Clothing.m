//
//  Clothing.m
//  Decorator
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Clothing.h"

@implementation Clothing

- (instancetype)initWithDecorate:(Person *)decorate
{
    self = [super init];
    if (self) {
        _decorate = decorate;
    }
    return self;
}

- (void)display
{
    if (self.decorate) {
        [self.decorate display];
    }
}

@end
