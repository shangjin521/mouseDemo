//
//  DISHUViewController.h
//  地鼠
//
//  Created by 中软mini049 on 15/9/19.
//  Copyright (c) 2015年 zhongruan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DISHUViewController : UIViewController
- (IBAction)click:(UIButton *)sender;
- (IBAction)start:(UIButton *)sender;
- (IBAction)KS:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UITextField *count;

@end
