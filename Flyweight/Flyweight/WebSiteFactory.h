//
//  WebSiteFactory.h
//  Flyweight
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WebSiteProtocol.h"

@interface WebSiteFactory : NSObject


/**
 享元对象
 */
@property (nonatomic, strong) NSDictionary *flyweights;

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey;
- (NSInteger)getWebSiteCount;

@end
