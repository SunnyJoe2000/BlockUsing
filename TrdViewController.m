//
//  TrdViewController.m
//  BlockUsing
//
//  Created by mac on 17/6/14.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import "TrdViewController.h"
#import "UIButton+CreateBtn.h"

@interface TrdViewController ()

@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *backBtn;



@end

@implementation TrdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.backBtn createBtnWithFrame:CGRectMake(100, 100, 100, 100) backgroundColor:[UIColor orangeColor] boldColor:[UIColor greenColor]];
    
    [self.backBtn addTarget:self action:@selector(secBtnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.label];
    
    [self.view addSubview:self.backBtn];
    
    
}

- (void)backValue:(trdBlock)strValueBlock {
    
    self.backValueBlock = strValueBlock;
        
    
}

- (void)secBtnAction {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    self.label.text = @"1234567890";
    
    if (self.backValueBlock) {
        self.backValueBlock(self.label.text);

    }
    
    
    
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        
    }
    
    return _label;
    
}

- (UIButton *)backBtn {
    if (!_backBtn) {
        _backBtn = [[UIButton alloc] init];
        
    }
    return _backBtn;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



@end
