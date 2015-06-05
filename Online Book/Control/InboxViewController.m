//
//  InboxViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "InboxViewController.h"
#import "SlideNavigationController.h"

@interface InboxViewController ()

@end

@implementation InboxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onCancel:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
}

@end
