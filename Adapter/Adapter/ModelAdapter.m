//
//  ModelAdapter.m
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ModelAdapter.h"
#import "Model.h"


@implementation ModelAdapter


- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

- (NSString *)userName{
    Model *data = self.data;
    return data.userName;
}


- (NSString *)phoneNumber{
    Model *data = self.data;
    return data.phoneNumber;
}

@end
