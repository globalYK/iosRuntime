//
//  ViewController.m
//  iosRuntime
//
//  Created by 李永开 on 2018/3/1.
//  Copyright © 2018年 李永开. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+More.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    for (int i = 0; i <5 ; i ++)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:[NSString stringWithFormat:@"btn%d",i] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/256.0 green:arc4random_uniform(256)/256.0 blue:arc4random_uniform(256)/256.0 alpha:1];
        btn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2.0 - 100, 100 * (i + 1), 200, 50);
        [self.view addSubview:btn];
    }
}


- (void)btnAction:(UIButton *)btn
{
    //给btn加一个属性记录被点击的次数
    btn.UIButtonClickCount += 1;
    
    [btn setTitle:[NSString stringWithFormat:@"%@ +%ld次",[btn.currentTitle substringToIndex:4], (long)btn.UIButtonClickCount] forState:UIControlStateNormal];
}



@end
