//
//  DogFactory.m
//  FactoryMethod
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "DogFactory.h"
#import "Dog.h"
@implementation DogFactory


- (Animal *)createAnimal
{
    Dog *dog = [[Dog alloc] init];
    dog.name = @"泰迪";
    return dog;
}

@end
