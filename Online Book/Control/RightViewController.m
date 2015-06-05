//
//  RightViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "RightViewController.h"
#import "SlideNavigationController.h"

@interface RightViewController () {
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    IBOutlet UIButton *btn4;
    IBOutlet UIButton *btn5;
    IBOutlet UIButton *btn6;
    IBOutlet UIButton *btn7;
    IBOutlet UIButton *btn9;
    
    IBOutlet UIImageView *userImg;
    IBOutlet UIImageView *logoImg;
    IBOutlet UILabel *logoLabel1;
    IBOutlet UILabel *logoLabel2;
    
    BOOL stateLogin;
}

@end

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    stateLogin = NO;
    userImg.layer.cornerRadius = userImg.frame.size.width / 2.0f;
    userImg.layer.borderWidth = 3.0f;
    userImg.layer.borderColor = [[UIColor colorWithRed:255.0 green:255.0 blue:255.0 alpha:0.8] CGColor];
    userImg.clipsToBounds = YES;
}

- (IBAction)onMenuClick:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    UIButton *button = (UIButton *) sender;
    UIViewController *vc ;
    
    switch (button.tag)
    {
        case 0:
            [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
            return;
            break;
            
        case 1:
            if (stateLogin) {
                vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"SettingLoginViewController"];
            } else {
                vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"SettingViewController"];
            }
            break;
            
        case 2:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"FavViewController"];
            break;
        
        case 3:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"InboxViewController"];
            break;
            
        case 4:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"];
            break;
            
        case 5:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"HomeViewController"];
            break;
        
        case 6:
            [self updateMenu:NO];
            [[SlideNavigationController sharedInstance] popToRootViewControllerAnimated:YES];
            [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"Login"];
            [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"Verify"];

            return;
            break;
            
        case 7:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"InviteViewController"];
            break;
            
        case 8:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"];
            break;
            
        case 9:
            vc = [mainStoryboard instantiateViewControllerWithIdentifier: @"AccountViewController"];
            break;
    }
    
    [[SlideNavigationController sharedInstance] popToRootAndSwitchToViewController:vc withSlideOutAnimation:NO andCompletion:nil];
}

- (void) updateMenu: (BOOL) isLogin {
    stateLogin = isLogin;
    if (isLogin) {
        [btn2 setHidden:NO];
        [btn3 setHidden:NO];
        [btn4 setHidden:YES];
        [btn5 setHidden:YES];
        [btn6 setHidden:NO];
        [btn7 setHidden:NO];
        [btn9 setHidden:NO];
        
        [logoImg setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [userImg setHidden:NO];
        
    } else {
        [btn2 setHidden:YES];
        [btn3 setHidden:YES];
        [btn4 setHidden:NO];
        [btn5 setHidden:NO];
        [btn6 setHidden:YES];
        [btn7 setHidden:YES];
        [btn9 setHidden:YES];
        
        [logoImg setHidden:YES];
        [logoLabel1 setHidden:YES];
        [logoLabel2 setHidden:YES];
        [userImg setHidden:NO];
    }
}

@end
