//
//  MoreNode.m
//  TreeNode
//
//  Created by 王宏志 on 16/9/20.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "MoreNode.h"

@interface MoreNode ()

@property (nonatomic, strong) NSMutableArray <MoreNode *>* childNodes;

@end

@implementation MoreNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childNodes = [NSMutableArray array];
    }
    return self;
}

+ (instancetype)nodeWithNodeName:(NSString *)nodeName
{
    MoreNode *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    return node;
}

- (void)addNode:(MoreNode *)node
{
    [self.childNodes addObject:node];
}

- (void)removeNode:(MoreNode *)node
{
    [self.childNodes removeObject:node];
}

- (MoreNode *)nodeAtIndex:(NSUInteger)index
{
    if (index >= self.childNodes.count) {
        return nil;
    } else {
        return self.childNodes[index];
    }
}

- (void)opeartion
{
    NSLog(@"nodeName: --> %@",self.nodeName);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[Node] - %@",self.nodeName];
}
@end
