//
//  MoreNode.h
//  TreeNode
//
//  Created by 王宏志 on 16/9/20.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoreNode : NSObject


/**
 节点名字
 */
@property (nonatomic, strong) NSString *nodeName;

@property (nonatomic, strong ,readonly) NSMutableArray <MoreNode *>*childNodes;


/**
 快速构造

 @param nodeName 节点名字

 @return 节点
 */
+ (instancetype)nodeWithNodeName:(NSString *)nodeName;


/**
 添加节点

 @param node 节点
 */
- (void)addNode:(MoreNode *)node;

/**
 移除节点

 @param node 节点
 */
- (void)removeNode:(MoreNode *)node;


/**
 获取节点
 
 @param index 索引

 @return 节点
 */
- (MoreNode *)nodeAtIndex:(NSUInteger)index;


/**
 打印节点
 */
- (void)opeartion;
@end
