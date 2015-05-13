//
//  ViewController.h
//  test1
//
//  Created by HongQuan on 2015/05/12.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kShowSegmentIndex 0

@interface ViewController : UIViewController
    <UIActionSheetDelegate>{
    IBOutlet UILabel *statusText;
    IBOutlet UIButton *myButton;

    IBOutlet UITextField *nameField;
    IBOutlet UITextField *numberField;
    IBOutlet UILabel *sliderLabel;
//    IBOutlet UISwitch *leftSwitch;
//    IBOutlet UISwitch *rightSwitch;
    IBOutlet UISegmentedControl *mySegment;
    IBOutlet UIView *switchView;
    IBOutlet UIButton *doSomethingButton;
    
}

@property (retain, nonatomic) UILabel *statusText;
@property (retain, nonatomic) UITextField *nameField;
@property (retain, nonatomic) UITextField *numberField;
@property (retain, nonatomic) UILabel *sliderLabel;
//@property (retain, nonatomic) UISwitch *leftSwitch;
//@property (retain, nonatomic) UISwitch *rightSwitch;
@property (retain, nonatomic) UISegmentedControl *mySegment;
@property (retain, nonatomic) UIView *switchView;
@property (retain, nonatomic) UIButton *doSomthingButton;

// 左右键按下的时候响应方法
- (IBAction) buttonPressed:(id)sender;
// 编辑后按下Done后的响应方法
- (IBAction) textFieldDoneEditing:(id)sender;
// 数字键盘状态下，背景触摸即关闭数字键盘
- (IBAction) backgroundClick:(id)sender;
// 滑条变更响应方法
- (IBAction) sliderChanged:(id)sender;

// 开关变化时响应方法
//- (IBAction) switchChanged:(id)sender;
- (IBAction) segmentChanged:(id)sender;
// 根据开关状态显示隐蔽方法
- (IBAction) toggleShowHide:(id)sender;

//
- (IBAction) doSomething:(id)sender;

@end

