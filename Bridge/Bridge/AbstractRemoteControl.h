//
//  AbstractRemoteControl.h
//  Bridge
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol TVProtocol <NSObject>
@required
- (void)switchChannel; // 切换频道

- (void)adjustVolume;  // 调节音量

- (void)powerSwitch;   // 电源开关

@end

@interface AbstractRemoteControl : NSObject

@property (nonatomic,weak) id <TVProtocol>protocol;

- (void)detectTVFunction;

@end



