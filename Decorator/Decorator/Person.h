//
//  Person.h
//  Decorator
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @protected
    NSString *_name;
}

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (void)display;

@end
