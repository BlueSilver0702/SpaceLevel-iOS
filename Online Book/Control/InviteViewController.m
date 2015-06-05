//
//  InviteViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "InviteViewController.h"
#import "SlideNavigationController.h"
#import "ShareURLViewController.h"

@interface InviteViewController () {
    IBOutlet UIView *modalView;
}
@end

@implementation InviteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    ShareURLViewController *currencyView = (ShareURLViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"ShareURLViewController"];
    
    [self addChildViewController:currencyView];
    [modalView addSubview:currencyView.view];
    [modalView setHidden:YES];
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

- (IBAction)onCancel:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

@end
