//
//  ConcreteWebSite.h
//  Flyweight
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSiteProtocol.h"

@interface ConcreteWebSite : NSObject<WebSiteProtocol>

@property (nonatomic, copy) NSString *webName;

@end
