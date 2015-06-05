//
//  VerifyOffice2ViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyOffice2ViewController.h"

@interface VerifyOffice2ViewController ()
{
    IBOutlet UIView *backView;
}
@end

@implementation VerifyOffice2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onSelect:(id)sender {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [backView setHidden:NO];
    } completion:nil];
}

- (IBAction)onSelectDone:(id)sender {
    [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifyOffice3ViewController"] animated:YES];
}

- (IBAction)onModalExit:(id)sender {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [backView setHidden:YES];
    } completion:nil];
}

@end
