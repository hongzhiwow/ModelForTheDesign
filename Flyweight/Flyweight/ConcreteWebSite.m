//
//  ConcreteWebSite.m
//  Flyweight
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ConcreteWebSite.h"

@implementation ConcreteWebSite


- (void)use:(User *)user
{
    NSLog(@"网站分类:%@ 用户名字:%@", self.webName, user.userName);
}

@end
