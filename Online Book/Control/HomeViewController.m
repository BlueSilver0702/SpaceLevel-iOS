//
//  HomeViewController.m
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeSubViewController.h"
#import "LoginViewController.h"
#import "ForgetViewController.h"
#import "RegisterViewController.h"
#import "SlideNavigationController.h"

@interface HomeViewController () {
    HomeSubViewController *homeView;
    LoginViewController *loginView;
    ForgetViewController *forgetView;
    RegisterViewController *registerView;
    
    IBOutlet UIImageView *logoImg;
    IBOutlet UIButton *registerBtn;
    IBOutlet UIButton *loginBtn;
    IBOutlet UILabel *logoLabel1;
    IBOutlet UILabel *logoLabel2;
    IBOutlet UIButton *exitBtn;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                            bundle: nil];
    homeView = (HomeSubViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"HomeSubViewController"];
    loginView = (LoginViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"LoginViewController"];
    forgetView = (ForgetViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"ForgetViewController"];
    registerView = (RegisterViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"RegisterViewController"];
    
    [self addChildViewController:homeView];
    [parentView addSubview:homeView.view];
    [homeView.view setHidden:YES];
    
    [self addChildViewController:loginView];
    [parentView addSubview:loginView.view];
    [loginView.view setHidden:YES];
    
    [self addChildViewController:forgetView];
    [parentView addSubview:forgetView.view];
    [forgetView.view setHidden:YES];
    
    [self addChildViewController:registerView];
    [parentView addSubview:registerView.view];
    [registerView.view setHidden:YES];
    
    [logoImg setHidden:NO];
    [registerBtn setHidden:NO];
    [loginBtn setHidden:NO];
    [logoLabel1 setHidden:NO];
    [logoLabel2 setHidden:NO];
    
    if ([SlideNavigationController sharedInstance].isInit) {
        [SlideNavigationController sharedInstance].isInit = NO;
        if ([SlideNavigationController sharedInstance].isLogin) {
            [parentView setHidden:NO];
            [logoImg setHidden:YES];
            [registerBtn setHidden:YES];
            [loginBtn setHidden:YES];
            [exitBtn setHidden:YES];
            [logoLabel1 setHidden:YES];
            [logoLabel2 setHidden:YES];
            [homeView.view setHidden:YES];
            [loginView.view setHidden:NO];
            [forgetView.view setHidden:YES];
            [registerView.view setHidden:YES];
        } else {
            [parentView setHidden:NO];
            [logoImg setHidden:YES];
            [registerBtn setHidden:YES];
            [loginBtn setHidden:YES];
            [exitBtn setHidden:YES];
            [logoLabel1 setHidden:YES];
            [logoLabel2 setHidden:YES];
            [homeView.view setHidden:YES];
            [loginView.view setHidden:YES];
            [forgetView.view setHidden:YES];
            [registerView.view setHidden:NO];
        }
    }
}

- (void) openHome:(BOOL) isLogin {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:NO];
        [loginView.view setHidden:YES];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:YES];
        [parentView setHidden:NO];
    } completion:nil];
}

- (void) closeHome {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:NO];
        [registerBtn setHidden:NO];
        [loginBtn setHidden:NO];
        [exitBtn setHidden:NO];
        [logoLabel1 setHidden:NO];
        [logoLabel2 setHidden:NO];
        [homeView.view setHidden:YES];
        [loginView.view setHidden:YES];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:YES];
        [parentView setHidden:YES];
    } completion:nil];
}

- (void) openLogin {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:YES];
        [loginView.view setHidden:NO];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:YES];
    } completion:nil];
}

- (void) closeLogin {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:NO];
        [loginView.view setHidden:YES];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:YES];
    } completion:nil];
}

- (void) openForget {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:YES];
        [loginView.view setHidden:YES];
        [forgetView.view setHidden:NO];
        [registerView.view setHidden:YES];
    } completion:nil];
}

- (void) closeForget {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:YES];
        [loginView.view setHidden:NO];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:YES];
    } completion:nil];
}

- (void) openRegister {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [logoImg setHidden:YES];
        [registerBtn setHidden:YES];
        [loginBtn setHidden:YES];
        [exitBtn setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [homeView.view setHidden:YES];
        [loginView.view setHidden:YES];
        [forgetView.view setHidden:YES];
        [registerView.view setHidden:NO];
    } completion:nil];
}

- (IBAction)onLogin:(id)sender {
    [self openHome:YES];
    [homeView refresh:YES];
}

- (IBAction)onRegister:(id)sender {
    [self openHome:NO];
    [homeView refresh:NO];
}

- (IBAction)onExit:(id)sender {
    [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];

}

@end
