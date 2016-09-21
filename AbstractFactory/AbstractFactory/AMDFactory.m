//
//  AMDFactory.m
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "AMDFactory.h"

@implementation AMDFactory

- (CPUBase *)createCPU
{
    AMDCPU *cpu = [[AMDCPU alloc] init];
    cpu.pins = 200;
    return cpu;
}

- (MainBoardBase *)createMainBoard
{
    AMDMainBoard *main = [[AMDMainBoard alloc] init];
    main.cpuHoles = 800;
    return main;
}


@end
