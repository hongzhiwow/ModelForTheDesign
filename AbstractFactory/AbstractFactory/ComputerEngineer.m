//
//  ComputerEngineer.m
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ComputerEngineer.h"

@implementation ComputerEngineer

- (void)makeComputer:(FactoryBase *)factory
{
    self.cpu = [factory createCPU];
    self.mainBoard = [factory createMainBoard];
    
    [self.cpu caculate];
    [self.mainBoard installCpuHoles];
}

@end
