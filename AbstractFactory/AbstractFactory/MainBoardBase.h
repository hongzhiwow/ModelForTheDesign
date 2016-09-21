//
//  MainBoardBase.h
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainBoardBase : NSObject

/**
 cpu 插槽数
 */
@property (nonatomic, assign) int cpuHoles;


/**
 统计cpu 插槽数
 */
- (void)installCpuHoles;

@end
