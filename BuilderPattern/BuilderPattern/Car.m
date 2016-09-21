//
//  Car.m
//  BuilderPattern
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Car.h"

@implementation Car
- (instancetype)initWithColor:(UIColor *)color price:(double)price family:(NSString *)family seats:(int)seats
{
    self = [super init];
    if (self) {
        self.color = color;
        self.price = price;
        self.family = family;
        self.seats = seats;
    }
    return self;
}

+ (Car *)createWithBuilder:(void (^)(CarBuilder *))block
{
    NSParameterAssert(block != nil);
    CarBuilder *builder = [[CarBuilder alloc] init];
    block(builder);
    return [builder buildCar];
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"[Car] \n color-> %@\n price-> %f\n family-> %@\n seats-> %d\n", self.color,self.price,self.family,self.seats];
}

@end
