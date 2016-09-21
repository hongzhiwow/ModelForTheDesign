//
//  main.m
//  FactoryMethod
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"

#import "AnimalFactory.h"
#import "DogFactory.h"
#import "CatFactory.h"

int main(int argc, const char * argv[]) {

    
    /*
    //简单模式创建 狗狗 和 猫猫
    [AnimalFactory createDog];
    [AnimalFactory createCat];
    */
    
    
    AnimalFactory *dogFac = [[DogFactory alloc] init];
    Animal *dog = [dogFac createAnimal];
    [dog eatFood];
    
    AnimalFactory *catFac = [[CatFactory alloc] init];
    Animal *cat = [catFac createAnimal];
    [cat eatFood];
    
    
    return 0;
}
