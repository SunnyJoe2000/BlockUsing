//
//  TrdViewController.h
//  BlockUsing
//
//  Created by mac on 17/6/14.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^trdBlock)(NSString *str);

@interface TrdViewController : UIViewController

@property (nonatomic,copy) trdBlock backValueBlock;

- (void)backValue:(trdBlock)strValueBlock;


@end
