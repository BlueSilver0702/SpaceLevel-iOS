//
//  ListSubTableViewCell.m
//  Online Book
//
//  Created by User on 4/30/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ListSubTableViewCell.h"

@implementation ListSubTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onFav:(id)sender {
    if (isFav) {
        [self.favBtn setBackgroundImage:[UIImage imageNamed:@"icon-list-fav0.png"] forState:UIControlStateNormal];
        isFav = NO;
    } else {
        [self.favBtn setBackgroundImage:[UIImage imageNamed:@"icon-list-fav1.png"] forState:UIControlStateNormal];
        isFav = YES;
    }
}

@end
