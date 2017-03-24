//
//  LOGINViewController.h
//  地鼠
//
//  Created by 中软mini049 on 15/9/19.
//  Copyright (c) 2015年 zhongruan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LOGINViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *pass;
- (IBAction)login;

@end
