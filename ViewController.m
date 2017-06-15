//
//  ViewController.m
//  BlockUsing
//
//  Created by mac on 17/6/8.
//  Copyright © 2017年 SunnyJoe. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,strong) UILabel *label;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    
    [self.btn setBackgroundColor:[UIColor yellowColor]];
    
    [self.btn addTarget:self action:@selector(jumpNextVC) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
        self.label = [[UILabel alloc] init];
        self.label.frame = CGRectMake(100, 180 ,110, 110);
        self.label.backgroundColor = [UIColor redColor];
        
        [self.view addSubview:self.label];
        
        
        
    
    
    [self.view addSubview:self.btn];
    
    
    
}

- (void)jumpNextVC {
    
    SecViewController *secVC = [[SecViewController alloc] init];
    
    [self.navigationController pushViewController:secVC animated:YES];
    
    [secVC returnBlockFunc:^(NSArray *arr) {
        
        NSString *str = [arr componentsJoinedByString:@""];
        
        self.label.text = str;
        
        
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
