//
//  Node.m
//  TreeNode
//
//  Created by 王宏志 on 16/9/20.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithNodeName:(NSString *)nodeName
{
    Node *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    return node;
}

@end
