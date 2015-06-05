//
//  VerifyOnline1ViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyOnline1ViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface VerifyOnline1ViewController ()
{
    IBOutlet UITextField *field1Txt;
    IBOutlet UITextField *field2Txt;
}
@end

@implementation VerifyOnline1ViewController
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
    if ([field1Txt.text isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please type email ID." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    } else if ([field2Txt.text isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please type password." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    } else {
        [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifySuccessViewController"] animated:YES];
    }
}

@end
