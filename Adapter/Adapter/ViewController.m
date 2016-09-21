//
//  ViewController.m
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ViewController.h"
#import "BusinessCardAdapter.h"
#import "ModelAdapter.h"
#import "Model.h"
#import "Card.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 创建UI控件
    Card *cardView = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([Card class]) owner:self options:nil] lastObject];
    cardView.center = self.view.center;
    cardView.bounds = self.view.bounds;
    [self.view addSubview:cardView];
    // 初始化模型
    Model *model = [[Model alloc] init];
    model.userName = @"CoderRyan";
    model.phoneNumber = @"188 - 8848 - 8848";
    // 与适配器连接
    BusinessCardAdapter *adapter = [[ModelAdapter alloc] initWithData:model];
    [cardView loadData:adapter];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
