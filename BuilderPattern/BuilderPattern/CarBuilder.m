//
//  CarBuilder.m
//  BuilderPattern
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "CarBuilder.h"
#import "Car.h"

@implementation CarBuilder

- (Car *)buildCar
{
    NSAssert(self.color, @"color property is forcely to initilized");
    NSAssert(self.price, @"price property is forcely to initilized");
    NSAssert(self.family, @"family property is forcely to initilized");
    NSAssert(self.seats, @"seats property is forcely to initilized");
    
    Car *car = [[Car alloc] init];
    car.color = self.color;
    car.family = self.family;
    car.price = self.price;
    car.seats = self.seats;
    return car;
}

@end
