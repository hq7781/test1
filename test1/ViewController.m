//
//  ViewController.m
//  test1
//
//  Created by HongQuan on 2015/05/12.
//  Copyright (c) 2015年 HONGQUAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize statusText;
@synthesize nameField;
@synthesize numberField;


#pragma mark - fucntions: 
#pragma mark Button press action
- (IBAction) buttonPressed: (id) sender{
    NSString *title = [sender titleForState:(UIControlStateNormal)];
    NSString *newText = [ [NSString alloc] initWithFormat:@" %@ button pressed.", title ];
    statusText.text = newText;
//    [newText release];
}
#pragma mark textField inputs action

// 按下Done之后的处理
-(IBAction) textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];

}

//数字键盘状态的关闭处理
-(IBAction)backgroundClick:(id)sender{
    [nameField resignFirstResponder];
    [numberField resignFirstResponder];

}

#pragma mark - Lift cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) dealloc {
//    [statusText release];
//    [super dealloc];
}
#pragma mark End
@end
