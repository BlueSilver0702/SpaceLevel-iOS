//
//  AddPaymentViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "AddPaymentViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface AddPaymentViewController ()

@end

@implementation AddPaymentViewController
@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.scrollView contentSizeToFit];
}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [super viewDidUnload];
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onDone:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
