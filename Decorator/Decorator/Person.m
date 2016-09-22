//
//  Person.m
//  Decorator
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)display
{
    NSLog(@"装扮的%@",self.name);
}

@end
