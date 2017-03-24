//
//  LOGINViewController.m
//  地鼠
//
//  Created by 中软mini049 on 15/9/19.
//  Copyright (c) 2015年 zhongruan. All rights reserved.
//

#import "LOGINViewController.h"
#import "DISHUViewController.h"
@interface LOGINViewController ()
{
    UIAlertView *alert;
}
@end

@implementation LOGINViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"死亡游戏";
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

- (IBAction)login {
    NSString *name= _name.text;
    NSString *pass=_pass.text;
    if ([name isEqualToString:@"sj"]&&[pass isEqualToString:@"123"]) {
        DISHUViewController *DS = [[DISHUViewController alloc]init];
        [self.navigationController pushViewController:DS animated:YES];
        
//        alert=[[UIAlertView alloc]initWithTitle:@"提示信息" message:@"登陆成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
//        [alert show];
    }
    else{
        alert=[[UIAlertView alloc]initWithTitle:@"提示信息" message:@"登陆失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
        [alert show];
    }

}
@end
