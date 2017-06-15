//
//  SecViewController.m
//  BlockUsing
//
//  Created by mac on 17/6/8.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import "SecViewController.h"
#import "TrdViewController.h"
#import "UIButton+CreateBtn.h"

@interface SecViewController ()

@property (nonatomic,strong) NSArray *arrReturn;
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,strong) UIButton *toTrdBtn;
@property (nonatomic,strong) UILabel *label;




@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrReturn = @[@"1",@"2",@"3",@"4"];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 400, 100, 40)];
    
    self.label.backgroundColor = [UIColor orangeColor];
    
    
    [self.view addSubview:self.label];
    
    
    
    self.btn = [[UIButton alloc] init];
    [self.btn setFrame:CGRectMake(100, 200, 100, 100)];
    
    self.toTrdBtn = [[UIButton alloc] init];
    
    [self.toTrdBtn createBtnWithFrame:CGRectMake(100, 280, 100, 100) backgroundColor:[UIColor orangeColor] boldColor:[UIColor blackColor]];
    
    [self.toTrdBtn setTitle:@"第三页" forState:UIControlStateNormal];
    
    self.btn.backgroundColor = [UIColor greenColor];
    [self.btn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.toTrdBtn addTarget:self action:@selector(toTrdVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    
    [self.view addSubview:self.toTrdBtn];

}


- (void)returnBlockFunc:(returnValueBlock)arrayBlock {
    self.arrBlock = arrayBlock;
    
}

- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
    
    if (self.arrBlock != nil) {
        self.arrBlock(self.arrReturn);
    }
    
}

- (void)toTrdVC {
    TrdViewController *trdVC = [[TrdViewController alloc] init];
    
    [self.navigationController pushViewController:trdVC animated:YES];
    
    [trdVC backValue:^(NSString *str) {
        
        self.label.text = str;
        [self.toTrdBtn setTitle:str forState:UIControlStateNormal];
        
        
    }];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
