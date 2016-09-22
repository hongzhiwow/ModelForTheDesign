//
//  WebSiteFactory.m
//  Flyweight
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "WebSiteFactory.h"
#import "ConcreteWebSite.h"

@implementation WebSiteFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _flyweights = [NSDictionary dictionary];
    }
    return self;
}

- (id<WebSiteProtocol>)getWebSiteCategory:(NSString *)webKey
{
    __block id<WebSiteProtocol> webset = nil;
    [self.flyweights enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        if (webKey == key) {
            webset = obj;
            *stop = YES;
        }
    }];
    if (webset == nil) {
        ConcreteWebSite *concreteWebset = [[ConcreteWebSite alloc] init];
        concreteWebset.webName = webKey;
        webset = concreteWebset;
        
        NSMutableDictionary *mutabledic = [NSMutableDictionary dictionaryWithDictionary:self.flyweights];
        [mutabledic setObject:webset forKey:webKey];
        self.flyweights = [NSDictionary dictionaryWithDictionary:mutabledic];
    }
    
    return webset;
}

- (NSInteger)getWebSiteCount
{
    return self.flyweights.count;
}


@end
