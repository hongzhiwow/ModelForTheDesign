//
//  Clothing.h
//  Decorator
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Person.h"

@interface Clothing : Person
@property (nonatomic, strong) Person *decorate;

- (instancetype)initWithDecorate:(Person *)decorate;

@end
