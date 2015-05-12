//
//  ViewController.h
//  test1
//
//  Created by HongQuan on 2015/05/12.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *statusText;
    IBOutlet UIButton *myButton;

    IBOutlet UITextField *nameField;
    IBOutlet UITextField *numberField;
    
}

@property (retain, nonatomic) UILabel *statusText;
@property (retain, nonatomic) UITextField *nameField;
@property (retain, nonatomic) UITextField *numberFiled;

// 左右键按下的时候响应方法
- (IBAction)buttonPressed:(id)sender;
// 编辑后按下Done后的响应方法
- (IBAction) textFieldDoneEditing:(id)sender;
// 数字键盘状态下，背景触摸即关闭数字键盘
- (IBAction) backgroundClick:(id)sender;

//- (IBAction) doSomething:(id)sender;

@end

