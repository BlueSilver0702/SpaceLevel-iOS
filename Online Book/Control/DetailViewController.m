//
//  DetailViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "DetailViewController.h"
#import "ShareViewController.h"
#import "VerifyViewController.h"
#import "ConfirmViewController.h"
#import "LoginViewController.h"
#import "MHFacebookImageViewer.h"
#import "UIImageView+MHFacebookImageViewer.h"

@interface DetailViewController () {
    IBOutlet UIView *modalView;
    IBOutlet UILabel *pageTitle;
    IBOutlet UIScrollView *bkScroll;
    IBOutlet UIScrollView *scrollCtrl;
    IBOutlet UILabel *pageLabel;
    IBOutlet UILabel *pageFloorLabel;
    IBOutlet UIScrollView *floorScroll;
    IBOutlet UILabel *addressLabel;
    IBOutlet UILabel *typeLabel;
    IBOutlet UIImageView *companyImg;
    IBOutlet UIImageView *aboutImg;
    IBOutlet UILabel *aboutLabel;
    IBOutlet UILabel *amenitiesLabel;
    IBOutlet UILabel *contactLabel;
    IBOutlet UILabel *mapLabel;
    IBOutlet UIView *bottomView;
    IBOutlet UILabel *priceLabel;
    IBOutlet UIButton *twitterBtn;
    IBOutlet UIButton *facebookBtn;
    IBOutlet UIButton *pinterestBtn;
    IBOutlet UIButton *googleBtn;
    
    IBOutlet UIView *scrollContentView;
    
//    projectInfo.p_address = @"Off Kanakpura";
//    projectInfo.p_company = @"Mantri";

//    projectInfo.p_location = @"Bengaluru";
//    projectInfo.p_name = @"Mantri Courtyard";
//    projectInfo.p_phone = @"1800-121-0000";

//    projectInfo.p_price = @"2 & 3 BHK";
//    projectInfo.p_type = @"Homes";
}

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    pageTitle.text = self.projectInfo.p_name;
    aboutLabel.text = self.projectInfo.p_about;
    [aboutImg setImage:[UIImage imageNamed:self.projectInfo.p_aboutImg]];
    amenitiesLabel.text = self.projectInfo.p_amenities;
    [companyImg setImage:[UIImage imageNamed:self.projectInfo.p_logo]];
//    priceLabel.text = self.projectInfo.p_price;
    addressLabel.text = [NSString stringWithFormat:@"%@\n%@", self.projectInfo.p_address, self.projectInfo.p_location];
    typeLabel.text = [NSString stringWithFormat:@"%@\nDeveloped by %@", self.projectInfo.p_type, self.projectInfo.p_name];
    mapLabel.text = self.projectInfo.p_mapDesc;
    priceLabel.text = self.projectInfo.p_price;
    
    if ([self.projectInfo.p_facebook isEqualToString:@""]) [facebookBtn setEnabled:NO];
    if ([self.projectInfo.p_twitter isEqualToString:@""]) [twitterBtn setEnabled:NO];
    if ([self.projectInfo.p_pinterest isEqualToString:@""]) [pinterestBtn setEnabled:NO];
    if ([self.projectInfo.p_google isEqualToString:@""]) [googleBtn setEnabled:NO];
    
    contactLabel.text = [NSString stringWithFormat:@"- Toll Free: %@ \n- Email id: %@",self.projectInfo.p_phone, self.projectInfo.p_email];
    // Do any additional setup after loading the view.
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    ShareViewController *currencyView = (ShareViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"ShareViewController"];
    
    [self addChildViewController:currencyView];
    [modalView addSubview:currencyView.view];
    [modalView setHidden:YES];
    
//    [bkScroll setContentSize:CGSizeMake(bkScroll.frame.size.width, 2080)];
    
    pageLabel.text = [NSString stringWithFormat:@"1/%ld", self.projectInfo.p_gallery.count];
    pageFloorLabel.text = [NSString stringWithFormat:@"1/%ld", self.projectInfo.p_plan.count];
    
    NSInteger imageIndex = self.selectedNum + 1;
    for (int i=0; i<self.projectInfo.p_gallery.count; i++) {
        UIImageView *imageViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(i*scrollCtrl.frame.size.width, 0, scrollCtrl.frame.size.width, scrollCtrl.frame.size.height)];
        [imageViewLeft setImage:[UIImage imageNamed:[self.projectInfo.p_gallery objectAtIndex:i]]];
        imageViewLeft.clipsToBounds = YES;
        [scrollCtrl addSubview:imageViewLeft];
        imageIndex ++;
    }
    [scrollCtrl setContentSize:CGSizeMake(self.projectInfo.p_gallery.count*scrollCtrl.frame.size.width, scrollCtrl.frame.size.height)];
    
    for (int j=0; j<self.projectInfo.p_plan.count; j++) {
        UIImageView *imageViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(j*floorScroll.frame.size.width, 0, floorScroll.frame.size.width, floorScroll.frame.size.height)];
//        [imageViewLeft setImage:[UIImage imageNamed:[self.projectInfo.p_plan objectAtIndex:j]]];
        [self displayImage:imageViewLeft withImage:[UIImage imageNamed:[self.projectInfo.p_plan objectAtIndex:j]]];
//        imageViewLeft.clipsToBounds = YES;
        [floorScroll addSubview:imageViewLeft];
    }
    [floorScroll setContentSize:CGSizeMake(self.projectInfo.p_plan.count*floorScroll.frame.size.width, floorScroll.frame.size.height)];
    
    CLLocationCoordinate2D theCoordinate1;
    theCoordinate1.latitude = self.projectInfo.p_lan;
    theCoordinate1.longitude = self.projectInfo.p_lon;
    
    MKPointAnnotation* myAnnotation1=[[MKPointAnnotation alloc] init];
    myAnnotation1.coordinate=theCoordinate1;
    myAnnotation1.title=@"Mantri Espana";
    
    [self.mapView addAnnotation:myAnnotation1];
    self.mapView.mapType = MKMapTypeSatellite;
    self.mapView.zoomEnabled = YES;
    MKCoordinateRegion region;
    region.center.latitude = self.projectInfo.p_lan;
    region.center.longitude = self.projectInfo.p_lon;
    region.span.latitudeDelta = 0.00725;
    region.span.longitudeDelta = 0.00725;
    [self.mapView setRegion:region animated:YES];    
}

- (void)viewDidAppear:(BOOL)animated {
    CGSize maximumLabelSize = CGSizeMake(amenitiesLabel.frame.size.width, FLT_MAX);
    CGSize aboutHeight = [amenitiesLabel.text sizeWithFont:amenitiesLabel.font constrainedToSize:maximumLabelSize lineBreakMode:amenitiesLabel.lineBreakMode];
    float changeHeight = amenitiesLabel.frame.size.height - aboutHeight.height;
    amenitiesLabel.frame = CGRectMake(amenitiesLabel.frame.origin.x, amenitiesLabel.frame.origin.y, maximumLabelSize.width, aboutHeight.height);
//    [amenitiesLabel setBackgroundColor:[UIColor redColor]];
    bottomView.frame = CGRectMake(bottomView.frame.origin.x, amenitiesLabel.frame.origin.y+amenitiesLabel.frame.size.height+8, bottomView.frame.size.width, bottomView.frame.size.height);
//    scrollContentView.frame = CGRectMake(scrollContentView.frame.origin.x, scrollContentView.frame.origin.y, scrollContentView.frame.size.width, bottomView.frame.size.height-changeHeight);
    [bkScroll setContentSize:CGSizeMake(bkScroll.frame.size.width, bottomView.frame.origin.y+bottomView.frame.size.height+20)];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.tag == 2) {
        int page_count = (int)(scrollCtrl.contentOffset.x / scrollCtrl.frame.size.width);
        pageLabel.text = [NSString stringWithFormat:@"%d/%ld", page_count+1, self.projectInfo.p_gallery.count];
    } else if (scrollView.tag == 3) {
        int page_count = (int)(floorScroll.contentOffset.x / floorScroll.frame.size.width);
        pageFloorLabel.text = [NSString stringWithFormat:@"%d/%ld", page_count+1, self.projectInfo.p_plan.count];
    }
    
}

- (IBAction)onCurrency:(id)sender {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:NO];
    } completion:nil];
}

- (void)closeModal {
    [UIView transitionWithView:self.view duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        [modalView setHidden:YES];
    } completion:nil];
}

- (IBAction)onExit:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onBook:(id)sender
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"Login"]) {
        LoginViewController *currencyView = (LoginViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"LoginViewController"];
        [self.navigationController pushViewController:currencyView animated:NO];
    } else {
//        if ([[NSUserDefaults standardUserDefaults] boolForKey:@"Verify"]) {
//            ConfirmViewController *currencyView = (ConfirmViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"ConfirmViewController"];
//            [self.navigationController pushViewController:currencyView animated:NO];
//        } else {
//            VerifyViewController *currencyView = (VerifyViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"VerifyViewController"];
//            [self.navigationController pushViewController:currencyView animated:NO];
//        }
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Coming Soon" message:@"SpaceLevel will process your book in the near future." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}

- (void) displayImage:(UIImageView*)imageView withImage:(UIImage*)image  {
    [imageView setImage:image];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [imageView setupImageViewer];
    imageView.clipsToBounds = YES;
}

//- (IBAction)onContact:(id)sender {
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.projectInfo.p_site]];
//}

- (IBAction)onFacebook:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.projectInfo.p_facebook]];
}

- (IBAction)onTwitter:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.projectInfo.p_twitter]];
}

- (IBAction)onGoogle:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.projectInfo.p_google]];
}

- (IBAction)onPinterest:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.projectInfo.p_pinterest]];
}

@end
