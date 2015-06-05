//
//  ForgetViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ForgetViewController.h"
#import "HomeViewController.h"
#import "SlideNavigationController.h"

@interface ForgetViewController () {
    IBOutlet UITextField *unameTxt;
}

@end

@implementation ForgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onBefore:(id)sender {
    HomeViewController *homeCtrl = (HomeViewController *)self.parentViewController;
    [homeCtrl closeForget];
}

- (IBAction)onExit:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

- (IBAction)onForget:(id)sender {
    NSString *uname = unameTxt.text;
    
    if ([uname isEqualToString:@""]) {
        [[[UIAlertView alloc] initWithTitle:@"Warning!" message:@"Please input user name." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        return;
    }
    
    NSLog(@"%@", uname);
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

@end
