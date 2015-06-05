//
//  ListSubViewController.h
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListSubViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSString *locationStr;
@property (nonatomic) BOOL isCompany;

@end
