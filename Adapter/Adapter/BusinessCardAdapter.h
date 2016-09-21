//
//  BusinessCardAdapter.h
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BusinessCardAdapterProtocol.h"
@interface BusinessCardAdapter : NSObject <BusinessCardAdapterProtocol>


@property (nonatomic, weak) id data; // 输入对象

- (instancetype)initWithData:(id)data; // 与输入对象建立联系

@end
