//
//  UIButton+More.m
//  iosRuntime
//
//  Created by 李永开 on 2018/3/1.
//  Copyright © 2018年 李永开. All rights reserved.
//

#import "UIButton+More.h"
#import <objc/runtime.h>


static char UIButtonIndexKey;



@implementation UIButton (More)

#pragma mark - 添加属性
//类目的set方法
- (void)setUIButtonClickCount:(NSInteger)UIButtonClickCount
{
    NSNumber *t = @(UIButtonClickCount);
    
    objc_setAssociatedObject(self, &UIButtonIndexKey, t, OBJC_ASSOCIATION_ASSIGN);
}

//类目的get方法
- (NSInteger)UIButtonClickCount
{
    NSNumber *t = objc_getAssociatedObject(self, &UIButtonIndexKey);
    
    return [t integerValue];
}



@end
