//
//  CarBuilder.h
//  BuilderPattern
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class Car;
@interface CarBuilder : NSObject


@property (nonatomic, strong) UIColor *color;

@property (nonatomic, assign) double price;

@property (nonatomic, copy) NSString *family;

@property (nonatomic, assign) int seats;


/**
 造车
 */
- (Car *)buildCar;

/**
 1 CarBuilder *builder = [[CarBuilder alloc] init];//builder里面列出了所有需要初始化的参数，可以认为是一个to-do list
 2 builder.color=[UIColor whiteColor];
 3 builder.price=100000;
 4 builder.family=@"China";
 5 builder.seats=5;
 6 Car *car=[builder buildCar];//build方法产生一个Car实例
 */


@end
