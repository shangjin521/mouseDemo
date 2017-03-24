//
//  RESULTViewController.m
//  地鼠
//
//  Created by 中软mini049 on 15/9/19.
//  Copyright (c) 2015年 zhongruan. All rights reserved.
//

#import "RESULTViewController.h"

@interface RESULTViewController ()

@end

@implementation RESULTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (void)viewWillAppear:(BOOL)animated{
//    NSLog(@"%@",_str);
    _SS.text=_str;
    if ([_SS.text intValue]<10) {
         NSLog(@"%@",_str);
        UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(120, 600, 200, 30)];
        la.text=[NSString stringWithFormat:@"杀人狂魔！"];
        la.textColor = [UIColor redColor];
        la.textAlignment = NSTextAlignmentCenter;
        la.numberOfLines=0;
        [self.view addSubview:la];
        
    }
    else{
         NSLog(@"%@",_str);
        UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(120, 600, 200, 30)];
        la.text=[ NSString stringWithFormat:@"您已成为死神！"];
        la.textColor = [UIColor redColor];
        la.textAlignment = NSTextAlignmentCenter;
        la.numberOfLines=0;
        [self.view addSubview:la];
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
