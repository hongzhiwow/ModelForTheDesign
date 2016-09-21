//
//  BusinessCardAdapterProtocol.h
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BusinessCardAdapterProtocol <NSObject>

@required
- (NSString *)userName;
- (NSString *)phoneNumber;

@end
