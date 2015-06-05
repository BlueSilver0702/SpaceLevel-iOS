//
//  VerifyPhoneViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyPhoneViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface VerifyPhoneViewController ()
{
    IBOutlet UITextField *txtView;
}
@end

@implementation VerifyPhoneViewController

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
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please type phone number." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    } else {
        
        [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifyOfficialViewController"] animated:YES];
    }
}

@end
