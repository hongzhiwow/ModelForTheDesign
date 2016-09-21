//
//  ViewController.m
//  Composite
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ViewController.h"

#import "Node.h"

#import "MoreNode.h"

@interface ViewController ()

/**
 根节点 simple
 */
@property (nonatomic, strong) Node *rootNode;


/**
 根节点 more
 */
@property (nonatomic, strong) MoreNode *moreNode;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     //创建根节点
     self.rootNode = [Node nodeWithNodeName:@"A"];
     
     //插入节点
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"B"]];
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"C"]];
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"D"]];
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"E"]];
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"F"]];
     [self insertNodeTree:self.rootNode withNode:[Node nodeWithNodeName:@"G"]];
     
     //遍历
     [self traversingBinaryTree:self.rootNode];
     
     */
    
    self.moreNode = [MoreNode nodeWithNodeName:@"A"];
    
    //A - > B C D
    [self.moreNode addNode:[MoreNode nodeWithNodeName:@"B"]];
    MoreNode *c = [MoreNode nodeWithNodeName:@"C"];
    [self.moreNode addNode:c];
    [self.moreNode addNode:[MoreNode nodeWithNodeName:@"D"]];
    
    //C -> E F
    [c addNode:[MoreNode nodeWithNodeName:@"E"]];
    [c addNode:[MoreNode nodeWithNodeName:@"F"]];
    
    NSLog(@"%@",self.moreNode.childNodes);
    NSLog(@"%@",c.childNodes);
}


/**
 插入节点
 
 @param tree 根节点
 @param node 子节点
 */
- (void)insertNodeTree:(Node *)tree withNode:(Node *)node
{
    if (!tree.leftNode) {
        tree.leftNode = node;
        return;
    }
    if (!tree.rightNode) {
        tree.rightNode = node;
        return;
    }
    [self insertNodeTree:tree.leftNode withNode:node];
}

/**
 遍历
 
 @param rootNode 根节点
 */
- (void)traversingBinaryTree:(Node *)rootNode
{
    if (rootNode.leftNode) {
        [self traversingBinaryTree:rootNode.leftNode];
    }
    
    NSLog(@"%@ \n",rootNode.nodeName);
    
    if (rootNode.rightNode) {
        [self traversingBinaryTree:rootNode.rightNode];
    }
}


@end
