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
@synthesize sliderLabel;

//@synthesize leftSwitch;
//@synthesize rightSwitch;
@synthesize mySegment;
@synthesize switchView;
@synthesize doSomthingButton;


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

// 滑条移动响应处理
-(IBAction)sliderChanged:(id)sender{
    UISlider *slider = (UISlider *) sender;
    int progressAsInt = (int)(slider.value + 0.5f);
    NSString *newText = [[NSString alloc] initWithFormat:@"%d", progressAsInt];
    sliderLabel.text = newText;
//    [newText release];
}

// 开关状态变化的响应处理
//-(IBAction)switchChanged:(id)sender{
//    UISwitch *whichSwitch = (UISwitch *)sender;
//    BOOL setting = whichSwitch.isOn;
//    [leftSwitch setOn:setting animated:YES];
//    [rightSwitch setOn:setting animated:YES];
//
//}
// 开关状态变化的响应处理
-(IBAction)segmentChanged:(id)sender{
    UISegmentedControl *whichSegment = (UISegmentedControl *)sender;
    NSInteger segIndex = whichSegment.selectedSegmentIndex;

    if (segIndex == kShowSegmentIndex) [switchView setHidden:NO];
    else [switchView setHidden:YES];

}

// 根据开关值显示／隐藏视图
- (IBAction) toggleShowHide:(id)sender{

}
//
- (IBAction) doSomething:(id)sender{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle: @"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No Way!"
                                  destructiveButtonTitle:@"Yes, I'm Sure!"
                                  otherButtonTitles: nil];
    
    [actionSheet showInView:self.view];
//    [actionSheet release];
}

- (void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex{
    if (!buttonIndex == [actionSheet cancelButtonIndex])
    {
        NSString *msg = nil;
        if (nameField.text.length > 0)
            msg = [[NSString alloc] initWithFormat:@"You can breathe easy, %@. everything went OK.", nameField.text];
        else
            msg = @"You can breathe easy, everything went OK.";
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Something was done"
                              message:msg
                              delegate:self
                              cancelButtonTitle:@"Phew!"
                              otherButtonTitles: nil];
        [alert show];
//      [alert release];
//      [msg release];
    }

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
