//
//  LoginViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"
#import "SlideNavigationController.h"
#import "RightViewController.h"

@interface LoginViewController () {
    IBOutlet UITextField *unameTxt;
    IBOutlet UITextField *pwdTxt;
}
@end

@implementation LoginViewController

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

- (IBAction)onLogin:(id)sender {
    NSString *uname = unameTxt.text;
    NSString *pwd = pwdTxt.text;
    
    if ([uname isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please input user name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    
    if ([pwd isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please input password." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    
    NSLog(@"%@:%@", uname, pwd);
    RightViewController *rightCtrl = (RightViewController *)[SlideNavigationController sharedInstance].rightMenu;
    [rightCtrl updateMenu:YES];
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"Login"];
}

- (IBAction)onForget:(id)sender {
    HomeViewController *homeCtrl = (HomeViewController *)self.parentViewController;
    [homeCtrl openForget];
}

@end
