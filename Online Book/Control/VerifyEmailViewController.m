//
//  VerifyEmailViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyEmailViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface VerifyEmailViewController ()
{
    IBOutlet UITextField *txtView;
}
@end

@implementation VerifyEmailViewController

@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    txtView.text = self.emailStr;
    
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
        
        [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifyPhoneViewController"] animated:YES];
    }
}

- (IBAction)onActive:(id)sender {
        txtView.enabled = YES;
}

@end
