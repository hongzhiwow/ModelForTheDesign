//
//  main.m
//  Flyweight
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WebSiteProtocol.h"
#import "WebSiteFactory.h"
#import "ConcreteWebSite.h"
#import "User.h"
typedef id<WebSiteProtocol> WebsiteType;

int main(int argc, const char * argv[]) {
  
    // 通过工厂方法返回各种具体享元对象,维护池中的享元对象
    WebSiteFactory *factory = [[WebSiteFactory alloc] init];
    
    // 返回具体的享元对象
    WebsiteType type1 = [factory getWebSiteCategory:@"首页"];
    User *user1 = [[User alloc] init];
    user1.userName = @"张三";
    // 享元对象都具有use方法
    [type1 use:user1];
    
    WebsiteType type2 = [factory getWebSiteCategory:@"商店"];
    User *user2 = [[User alloc] init];
    user2.userName = @"李四";
    [type2 use:user2];
    
    WebsiteType type3 = [factory getWebSiteCategory:@"案例"];
    User *user3 = [[User alloc] init];
    user3.userName = @"王五";
    [type3 use:user3];
    
    NSInteger count = [factory getWebSiteCount];
    NSLog(@"个数: %ld", (long)count);
    
    return 0;
}
