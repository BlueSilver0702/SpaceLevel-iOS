//
//  VerifyStepViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyStepViewController.h"
#import "VerifyEmailViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface VerifyStepViewController ()
{
    IBOutlet UITextField *txtView;
}
@end

@implementation VerifyStepViewController

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

- (IBAction)onClick:(id)sender {
    if ([txtView.text isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please type email id." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    } else {
        VerifyEmailViewController *emailCtrl = [[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifyEmailViewController"];
        emailCtrl.emailStr = txtView.text;
        [self.navigationController pushViewController:emailCtrl animated:YES];
    }
}

@end
