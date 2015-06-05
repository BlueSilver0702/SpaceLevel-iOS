//
//  LocationViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude = 12.933998;
    theCoordinate1.longitude = 77.6833199999;
    
    MKPointAnnotation* myAnnotation1=[[MKPointAnnotation alloc] init];
    myAnnotation1.coordinate=theCoordinate1;
    myAnnotation1.title=@"Mantri Espana";
    
    [self.mapView addAnnotation:myAnnotation1];
    self.mapView.mapType = MKMapTypeSatellite;
    self.mapView.zoomEnabled = YES;
    MKCoordinateRegion region;
    region.center.latitude = 12.933998;
    region.center.longitude = 77.6833199999;
    region.span.latitudeDelta = 0.00725;
    region.span.longitudeDelta = 0.00725;
    [self.mapView setRegion:region animated:YES];
}

- (IBAction)onExit:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
