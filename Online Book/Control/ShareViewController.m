//
//  ShareViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ShareViewController.h"
#import "DetailViewController.h"

@interface ShareViewController ()

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    
    DetailViewController *homeCtrl = (DetailViewController *)self.parentViewController;
    [homeCtrl closeModal];
    
}

@end
