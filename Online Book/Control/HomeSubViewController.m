//
//  HomeSubViewController.m
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "HomeSubViewController.h"
#import "HomeViewController.h"
#import "SlideNavigationController.h"

@interface HomeSubViewController ()

@end

@implementation HomeSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)refresh:(BOOL)isLogin {
    self.isLogin = isLogin;
    if (isLogin) {
        self.headerLabel.text = @"Quickly log in with:";
        return;
    }
    
    self.headerLabel.text = @"Quickly register with:";
}

- (IBAction)onBefore:(id)sender {
    HomeViewController *homeCtrl = (HomeViewController *)self.parentViewController;
    [homeCtrl closeHome];
}

- (IBAction)onExit:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

- (IBAction)onFB:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://facebook.com/"]];
}

- (IBAction)onGoogle:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://google.com/"]];
}

- (IBAction)onEmail:(id)sender {
    HomeViewController *homeCtrl = (HomeViewController *) self.parentViewController;
    if (self.isLogin) {
        [homeCtrl openLogin];
    } else {
        [homeCtrl openRegister];
    }
}

@end
