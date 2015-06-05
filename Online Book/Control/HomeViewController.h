//
//  HomeViewController.h
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController
{
    IBOutlet UIView *parentView;
}

@property(nonatomic) BOOL isLogin;
@property(nonatomic) BOOL isInitial;

- (void) openHome:(BOOL) isLogin;
- (void) closeHome;
- (void) openLogin;
- (void) closeLogin;
- (void) openForget;
- (void) closeForget;
- (void) openRegister;

@end
