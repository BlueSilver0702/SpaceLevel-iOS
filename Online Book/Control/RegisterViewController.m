//
//  RegisterViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "RegisterViewController.h"
#import "HomeViewController.h"
#import "SlideNavigationController.h"

@interface RegisterViewController () {
    IBOutlet UITextField *unameTxt;
    IBOutlet UITextField *pwdTxt;
    IBOutlet UITextField *fnameTxt;
    IBOutlet UITextField *lnameTxt;
}
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onBefore:(id)sender {
    HomeViewController *homeCtrl = (HomeViewController *)self.parentViewController;
    [homeCtrl closeLogin];
}

- (IBAction)onExit:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

- (IBAction)onRegister:(id)sender {
    NSString *uname = unameTxt.text;
    NSString *pwd = pwdTxt.text;
    NSString *fname = fnameTxt.text;
    NSString *lname = lnameTxt.text;
    
    if ([uname isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please input user name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    
    if ([pwd isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please input password." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    
    NSLog(@"%@:%@:%@:%@", uname, pwd, fname, lname);
    HomeViewController *homeCtrl = (HomeViewController *)self.parentViewController;
    [homeCtrl openLogin];
}

@end
