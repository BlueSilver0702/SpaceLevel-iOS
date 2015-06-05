//
//  AccountEditViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "AccountEditViewController.h"
#import "LanguageViewController.h"

@interface AccountEditViewController ()
{
    IBOutlet UIScrollView *backScroll;
    IBOutlet UIView *modalView;
}
@end

@implementation AccountEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [backScroll setContentSize:CGSizeMake(backScroll.frame.size.width, 800.0f)];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    LanguageViewController *currencyView = (LanguageViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"LanguageViewController"];
    
    [self addChildViewController:currencyView];
    [modalView addSubview:currencyView.view];
    [modalView setHidden:YES];
}

- (IBAction)onBack:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onSave:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onCurrency:(id)sender {
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
