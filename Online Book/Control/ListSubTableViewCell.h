//
//  ListSubTableViewCell.h
//  Online Book
//
//  Created by User on 4/30/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListSubTableViewCell : UITableViewCell
{
    BOOL isFav;
}
@property (nonatomic, retain) IBOutlet UIButton *favBtn;

@end
