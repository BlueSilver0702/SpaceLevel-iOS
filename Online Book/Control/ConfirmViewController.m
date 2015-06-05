//
//  ConfirmViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ConfirmViewController.h"
#import "PaypalConfirmViewController.h"

@interface ConfirmViewController ()
{
    IBOutlet UIScrollView *scrollCtrl;
    IBOutlet UIView *modalView;
}
@end

@implementation ConfirmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrollCtrl setContentSize:CGSizeMake(scrollCtrl.frame.size.width, 698.0f)];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    PaypalConfirmViewController *currencyView = (PaypalConfirmViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"PaypalConfirmViewController"];
    
    [self addChildViewController:currencyView];
    [modalView addSubview:currencyView.view];
    [modalView setHidden:YES];
}

- (IBAction)onAddCredit:(id)sender {
    [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"AddPaymentViewController"] animated:YES];
}

- (IBAction)onConfirm:(id)sender {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:NO];
    } completion:nil];
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)closeModal {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:YES];
    } completion:nil];
}

@end
