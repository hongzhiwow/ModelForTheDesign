//
//  AbstractTV.m
//  Bridge
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "AbstractTV.h"

@implementation AbstractTV

- (void)switchChannel
{
    NSLog(@"切换频道，由具体的子类来实现");
}
- (void)adjustVolume
{
     NSLog(@"调节音量，由具体的子类来实现");
}

- (void)powerSwitch
{
    NSLog(@"电源开关，由具体的子类来实现");
}
@end
