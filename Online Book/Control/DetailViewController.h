//
//  DetailViewController.h
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Project.h"

@interface DetailViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic) NSInteger selectedNum;
@property (nonatomic, retain) Project *projectInfo;
@property (nonatomic, weak) IBOutlet MKMapView* mapView;

- (void)closeModal;

@end
