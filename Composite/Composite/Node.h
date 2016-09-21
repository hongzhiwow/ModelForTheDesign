//
//  Node.h
//  TreeNode
//
//  Created by 王宏志 on 16/9/20.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Node 在ViewController 的实现中操作
 */
@interface Node : NSObject



@property (nonatomic, strong) NSString *nodeName;

@property (nonatomic, strong) Node *leftNode;

@property (nonatomic, strong) Node *rightNode;


/**
 创建Node

 @param nodeName Node名字

 @return 返回Node 实例
 */
+ (instancetype)nodeWithNodeName:(NSString *)nodeName;

@end
