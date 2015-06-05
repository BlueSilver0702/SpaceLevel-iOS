//
//  LanguageViewController.m
//  Online Book
//
//  Created by User on 4/28/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "LanguageViewController.h"
#import "AccountEditViewController.h"

@interface LanguageViewController ()

@end

@implementation LanguageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    
    AccountEditViewController *homeCtrl = (AccountEditViewController *)self.parentViewController;
    [homeCtrl closeModal];
    
}

@end
