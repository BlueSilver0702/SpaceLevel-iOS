//
//  FavViewController.m
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "FavViewController.h"
#import "SlideNavigationController.h"

@interface FavViewController ()

@end

@implementation FavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)openMenu:(id)sender
{
    [[SlideNavigationController sharedInstance] toggleRightMenu];
}

- (IBAction)onRoot:(id)sender
{
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:NO];
}

@end
