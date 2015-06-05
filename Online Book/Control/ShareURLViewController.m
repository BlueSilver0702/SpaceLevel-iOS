//
//  ShareURLViewController.m
//  Online Book
//
//  Created by User on 4/28/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ShareURLViewController.h"
#import "InviteViewController.h"

@interface ShareURLViewController ()

@end

@implementation ShareURLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {

    InviteViewController *homeCtrl = (InviteViewController *)self.parentViewController;
    [homeCtrl closeModal];
    
}

@end
