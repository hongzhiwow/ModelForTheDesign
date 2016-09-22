//
//  main.m
//  Decorator
//
//  Created by 王宏志 on 2016/9/22.
//  Copyright © 2016年 王宏志. All rights reserved.
//

/*
 而装饰模式提供了一个非常好的解决方案，
 它把每个要装饰的功能放在单独的类中，
 并让这个类包含它所要装饰的对象，
 因此，当执行特殊行为时，在这里就可以根据需求有选择、
 按顺序的使用装饰功能包装对象了。
 */

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Clothing.h"
#import "Shirts.h"
#import "Pants.h"
#import "Shoes.h"

int main(int argc, const char * argv[]) {

    
    Person *person = [[Person alloc] initWithName:@"大拖鞋"];
    Clothing *clothing = [[Clothing alloc] initWithDecorate:person];
    
    Shirts *shirts = [[Shirts alloc] init];
    Pants *pants = [[Pants alloc] init];
    Shoes *shoes = [[Shoes alloc] init];
    
    shirts.decorate = clothing;
    pants.decorate = shirts;
    shoes.decorate = pants;
    [shoes display];
    
    
    //第二次装扮
    pants.decorate = clothing;
    shoes.decorate = pants;
    shirts.decorate = shoes;
    [shirts display];
    return 0;
}
