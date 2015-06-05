//
//  PaypalConfirmViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "PaypalConfirmViewController.h"
#import "ConfirmViewController.h"

#define kPayPalEnvironment PayPalEnvironmentNoNetwork

@interface PaypalConfirmViewController () {
    
}

@property(nonatomic, strong, readwrite) PayPalConfiguration *payPalConfig;

@end

@implementation PaypalConfirmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    // Preconnect to PayPal early
    [PayPalMobile preconnectWithEnvironment:kPayPalEnvironment];
}

- (IBAction)onConfirm:(id)sender {
    ConfirmViewController *homeCtrl = (ConfirmViewController *)self.parentViewController;
    [homeCtrl closeModal];
    
    PayPalPayment *payment = [[PayPalPayment alloc] init];
    payment.amount = [[NSDecimalNumber alloc] initWithUnsignedInteger:1];
    payment.currencyCode = @"ILS";
    payment.shortDescription = @"Online Booking Apartment";
    payment.items = nil;  // if not including multiple items, then leave payment.items as nil
    payment.paymentDetails = nil; // if not including payment details, then leave payment.paymentDetails as nil
    
    if (!payment.processable) {
        // This particular payment will always be processable. If, for
        // example, the amount was negative or the shortDescription was
        // empty, this payment wouldn't be processable, and you'd want
        // to handle that here.
    }
    
    // Update payPalConfig re accepting credit cards.
    _payPalConfig = [[PayPalConfiguration alloc] init];
    _payPalConfig.acceptCreditCards = YES;
    _payPalConfig.merchantName = @"Online Booking Apartment, Inc.";
    _payPalConfig.merchantPrivacyPolicyURL = [NSURL URLWithString:@"https://www.paypal.com/webapps/online-booking-system"];
    _payPalConfig.merchantUserAgreementURL = [NSURL URLWithString:@"https://www.paypal.com/webapps/online-booking-system"];
    
    PayPalPaymentViewController *paymentViewController = [[PayPalPaymentViewController alloc] initWithPayment:payment
                                                                                                configuration:self.payPalConfig
                                                                                                     delegate:self];
    [self presentViewController:paymentViewController animated:YES completion:nil];
}

#pragma mark PayPalPaymentDelegate methods

- (void)payPalPaymentViewController:(PayPalPaymentViewController *)paymentViewController didCompletePayment:(PayPalPayment *)completedPayment {
    NSLog(@"PayPal Payment Success!");
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:NO];
//    [[[UIAlertView alloc] initWithTitle:@"Thank you" message:@"Successfully Paid" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (void)payPalPaymentDidCancel:(PayPalPaymentViewController *)paymentViewController {
    NSLog(@"PayPal Payment Canceled");
    [paymentViewController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popToRootViewControllerAnimated:NO];
//    [[[UIAlertView alloc] initWithTitle:@"Sorry!" message:@"There are some problems on Paypal process" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

- (IBAction)onCancel:(id)sender {
    ConfirmViewController *homeCtrl = (ConfirmViewController *)self.parentViewController;
    [homeCtrl closeModal];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
}

@end
