//
//  SecViewController.h
//  BlockUsing
//
//  Created by mac on 17/6/8.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^returnValueBlock)(NSArray *arr);

@interface SecViewController : UIViewController

@property (nonatomic,copy) returnValueBlock arrBlock;


- (void)returnBlockFunc:(returnValueBlock)arrayBlock;


@end
