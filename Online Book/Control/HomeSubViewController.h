//
//  HomeSubViewController.h
//  Online Book
//
//  Created by User on 4/27/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeSubViewController : UIViewController

@property (nonatomic) BOOL isLogin;
@property (nonatomic, weak) IBOutlet UILabel *headerLabel;

- (void)refresh:(BOOL)isLogin;
@end
