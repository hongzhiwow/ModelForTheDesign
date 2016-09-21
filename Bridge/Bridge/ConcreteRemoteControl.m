//
//  ConcreteRemoteControl.m
//  Bridge
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ConcreteRemoteControl.h"

@implementation ConcreteRemoteControl

- (void)detectTVFunction
{
    [self.protocol switchChannel];
    [self.protocol adjustVolume];
    [self.protocol powerSwitch];
}

@end
