//
//  CatFactory.m
//  FactoryMethod
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "CatFactory.h"
#import "Cat.h"
@implementation CatFactory

- (Animal *)createAnimal
{
    Cat *cat = [[Cat alloc] init];
    cat.name = @"加菲";
    return cat;
}

@end
