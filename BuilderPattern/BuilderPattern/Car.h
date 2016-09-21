//
//  Car.h
//  BuilderPattern
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CarBuilder.h"

/**
 你需要一辆车  白色  10w 以内  国产   5座 等等
 */
@interface Car : NSObject

@property (nonatomic, strong) UIColor *color;

@property (nonatomic, assign) double price;

@property (nonatomic, copy) NSString *family;

@property (nonatomic, assign) int seats;


/**
    方式一
 Car *car = [[Car alloc] init];
 car.color = [UIColor whiteColor];
 car.price = 1000000;
 car.family = @"China";
 car.seats = 5;
 */


/**
 方式 二
    Car *car = [[Car alloc] initWithColor:[UIColor whiteColor] price:1000000 family:@"China" seats:5];
 */
- (instancetype)initWithColor:(UIColor *)color price:(double)price family:(NSString *)family seats:(int)seats;


/**
 两种方式分别代表了两种iOS对象的初始化方式。在未使用Builder Pattern之前，这两种初始化对象方式都有不方便的地方。
 第一种方法灵活，但是如果你接触iOS时间长点就会发现，经常会记不住这个类到底有哪些property需要初始化，尤其是当这个类是被人提供给你的时候！我们多么希望类的提供者能搞点注释啊啥的告知我们一下。
 第二种方法则很清晰地告诉调用者到底有哪些property需要在创建对象时初始化。但是，当类的提供者有天跟你说：hey，哥们，现在业务逻辑改变了，我增加了一个xxx属性，init方法也变了。这时，你是不是很想打他？每新增一个新的属性，init方法就要变动，而且当需要初始化的属性多大十几二十个时，这个init方法要不要太壮观！
 */

+ (Car *)createWithBuilder:(void (^)(CarBuilder *build))block;
@end
