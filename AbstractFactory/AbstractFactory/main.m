//
//  main.m
//  AbstractFactory
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FactoryBase.h"
#import "ComputerEngineer.h"
#import "IntelFactory.h"
#import "AMDFactory.h"

int main(int argc, const char * argv[]) {

    ComputerEngineer *engineer = [[ComputerEngineer alloc] init];
    //选择工厂
    FactoryBase *factory = [[IntelFactory alloc] init];
    
    //工程师 干起来
    [engineer makeComputer:factory];
    
    return 0;
}
