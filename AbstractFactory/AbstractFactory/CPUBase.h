//
//  CPUBase.h
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 在这里列举CPU 主板 芯片组 
 抽象工厂模式 新概念 产品族  ->  产品族，是指位于不同产品等级结构，功能相关联的产品组成的家族
 */
@interface CPUBase : NSObject


/**
 针脚数
 */
@property (nonatomic, assign) int pins;

- (void)caculate;
@end
