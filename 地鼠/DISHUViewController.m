//
//  DISHUViewController.m
//  地鼠
//
//  Created by 中软mini049 on 15/9/19.
//  Copyright (c) 2015年 zhongruan. All rights reserved.
//

#import "DISHUViewController.h"
#import "RESULTViewController.h"
@interface DISHUViewController ()
{
    int count1;
    int c;
    int tag;
    NSTimer *timer;
}
@end

@implementation DISHUViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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

- (IBAction)start:(UIButton *)sender {
    if (c<=20) {
        if (tag!=0) {
            
            UIButton *btn1=(UIButton *)[self.view viewWithTag:tag];
            UIImage *img = [UIImage imageNamed:@""];
            [btn1 setImage:img forState:UIControlStateNormal];
        }
        
        int sum=arc4random()%9+1;
        UIButton *btn=(UIButton *)[self.view viewWithTag:sum];
        UIImage *image1=[UIImage imageNamed:@"1.png"];
        UIImage *image2=[UIImage imageNamed:@""];
        [btn setImage:image1 forState:UIControlStateNormal];
        [btn setImage:image2 forState:UIControlStateHighlighted];
        tag=sum;
    }
    
    if (c==21) {
        [timer invalidate];
        timer=nil;
        RESULTViewController *re = [[RESULTViewController alloc]init];
        [self.navigationController pushViewController:re animated:YES];
        
        NSString *cou = [NSString stringWithFormat:@"%d",count1];
        re.str=cou;
    }
    
    c++;

    
}

- (IBAction)KS:(UIButton *)sender {
    c=0;
    count1=0;
    timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(start:) userInfo:nil repeats:YES];
    

    
    
}

- (IBAction)click:(UIButton *)sender {
    if (sender.tag==tag) {
        count1++;
        NSString *n=[NSString stringWithFormat:@"%d",count1];
        _count.text=n;
    }
}

@end
