//
//  UIButton+CreateBtn.m
//  BlockUsing
//
//  Created by mac on 17/6/14.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import "UIButton+CreateBtn.h"

@implementation UIButton (CreateBtn)

- (void)createBtnWithFrame:(CGRect)frame backgroundColor:(UIColor *)bgColor boldColor:(UIColor *)boldColor {
    self.backgroundColor = bgColor;
    self.frame = frame;
    self.titleLabel.textColor = boldColor;
    
}

@end
