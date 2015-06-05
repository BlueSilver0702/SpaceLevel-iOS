//
//  CurrencyViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "CurrencyViewController.h"
#import "SettingViewController.h"
#import "SettingLoginViewController.h"

@interface CurrencyViewController ()
{
    IBOutlet UIButton *ckBtn1;
    IBOutlet UIButton *ckBtn2;
    IBOutlet UIButton *ckBtn3;
}
@end

@implementation CurrencyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    if (self.isLogin) {
        SettingLoginViewController *homeCtrl = (SettingLoginViewController *)self.parentViewController;
        [homeCtrl closeModal];
    } else {
        SettingViewController *homeCtrl = (SettingViewController *)self.parentViewController;
        [homeCtrl closeModal];
    }

}

- (IBAction)onCheckClk:(id)sender {
    UIButton *btn = (UIButton *) sender;
    if (btn.tag == 1) {
        [ckBtn1 setHidden:NO];
        [ckBtn2 setHidden:YES];
        [ckBtn3 setHidden:YES];
    } else if (btn.tag == 2) {
        [ckBtn1 setHidden:YES];
        [ckBtn2 setHidden:NO];
        [ckBtn3 setHidden:YES];
    } else {
        [ckBtn1 setHidden:YES];
        [ckBtn2 setHidden:YES];
        [ckBtn3 setHidden:NO];
    }
}

@end
