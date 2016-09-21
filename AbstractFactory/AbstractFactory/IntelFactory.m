//
//  IntelFactory.m
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "IntelFactory.h"

@implementation IntelFactory

- (CPUBase *)createCPU
{
    IntelCPU *cpu = [[IntelCPU alloc] init];
    cpu.pins = 100;
    return cpu;
}


- (MainBoardBase *)createMainBoard
{
    IntelMainBoard *main = [[IntelMainBoard alloc] init];
    main.cpuHoles = 100;
    return main;
}

@end
