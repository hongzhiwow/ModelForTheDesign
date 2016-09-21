//
//  FactoryBase.h
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPUBase.h"
#import "MainBoardBase.h"
@interface FactoryBase : NSObject


/**
 创建cpu

 @return cpu
 */
- (CPUBase *)createCPU;

/**
 创建主板

 @return 主板
 */
- (MainBoardBase *)createMainBoard;


@end
