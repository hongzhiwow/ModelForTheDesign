//
//  Card.h
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

@interface Card : UIView


/**
 loadData
 */
- (void)loadData:(id <BusinessCardAdapterProtocol>)data;


@end
