//
//  ComputerEngineer.h
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPUBase.h"
#import "MainBoardBase.h"
#import "FactoryBase.h"

@interface ComputerEngineer : NSObject


@property (nonatomic, strong) CPUBase *cpu;
@property (nonatomic, strong) MainBoardBase *mainBoard;

- (void)makeComputer:(FactoryBase *)factory;

@end
