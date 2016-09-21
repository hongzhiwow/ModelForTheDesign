//
//  AnimalFactory.h
//  FactoryMethod
//
//  Created by 王宏志 on 16/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
/**
 #import "Dog.h"
 #import "Cat.h"
 */
@interface AnimalFactory : NSObject

/**
 + (Dog *)createDog;
 
 + (Cat *)createCat;
 */


/**
 这个地方为什么不用类方法  而才用实例方法呢?
 原因 ：我们针对不同的动物实现不同的工厂 假如我们现在将批量生产的🐈 -> 🐩 那我们只需要 将创建方法 更改一下即可不必大面积修改创建方法

 @return 动物
 */
- (Animal *)createAnimal;
@end
