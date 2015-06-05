//
//  VerifySuccessViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifySuccessViewController.h"
#import "SlideNavigationController.h"

@interface VerifySuccessViewController ()

@end

@implementation VerifySuccessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onClick:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"Verify"];
}

@end
