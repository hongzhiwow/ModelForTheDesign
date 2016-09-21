//
//  main.m
//  Bridge
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AbstractRemoteControl.h"
#import "ConcreteRemoteControl.h"

#import "AbstractTV.h"

#import "TVA.h"
#include "TVB.h"


typedef id<TVProtocol> TVProtocol;

int main(int argc, const char * argv[]) {

    AbstractRemoteControl *control = [[ConcreteRemoteControl alloc] init];
    TVProtocol procotol = [[TVA alloc] init];
    control.protocol = procotol;
    [control detectTVFunction];
    
    procotol = [[TVB alloc] init];
    control.protocol = procotol;
    [control detectTVFunction];
    
    
    
    return 0;
}
