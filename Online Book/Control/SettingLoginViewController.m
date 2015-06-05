//
//  SettingLoginViewController.m
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "SettingLoginViewController.h"
#import "CurrencyViewController.h"

@interface SettingLoginViewController () {
    IBOutlet UIView *modalView;
    CurrencyViewController *currencyView;
}

@end

@implementation SettingLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    currencyView = (CurrencyViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"CurrencyViewController"];
    
    [self addChildViewController:currencyView];
    [modalView addSubview:currencyView.view];
    [modalView setHidden:YES];
}

- (IBAction)onCancel:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}

- (IBAction)onCurrency:(id)sender {
    currencyView.isLogin = NO;
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:NO];
    } completion:nil];
}

- (void)closeModal {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:YES];
    } completion:nil];
}

@end
