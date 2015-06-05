//
//  ListViewController.h
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlideNavigationController.h"
#import <EAIntroView/EAIntroView.h>

@interface ListViewController : UIViewController <SlideNavigationControllerDelegate, EAIntroDelegate, UITableViewDataSource, UITableViewDelegate>

@end
