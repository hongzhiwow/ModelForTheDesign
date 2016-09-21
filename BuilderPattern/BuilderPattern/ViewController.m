//
//  ViewController.m
//  BuilderPattern
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Car *car = [Car createWithBuilder:^(CarBuilder *build) {
        build.color = [UIColor whiteColor];
        build.price = 100000;
        build.family = @"chinna";
        build.seats = 6;
    }];
    
    NSLog(@"%@",car);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
