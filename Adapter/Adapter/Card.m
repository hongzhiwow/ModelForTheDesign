//
//  Card.m
//  Adapter
//
//  Created by 王宏志 on 2016/9/21.
//  Copyright © 2016年 王宏志. All rights reserved.
//

#import "Card.h"

@interface Card ()

@property (weak, nonatomic) IBOutlet UILabel *phone;

@property (weak, nonatomic) IBOutlet UILabel *name;
@end

@implementation Card

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)loadData:(id<BusinessCardAdapterProtocol>)data
{
    
    if ([data respondsToSelector:@selector(userName)]) {
        self.name.text        = [data userName];
    }
    if ([data respondsToSelector:@selector(phoneNumber)]) {
        self.phone.text = [data phoneNumber];

    }
}

@end
