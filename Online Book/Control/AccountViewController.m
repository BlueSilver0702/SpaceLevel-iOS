//
//  AccountViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "AccountViewController.h"
#import "AccountEditViewController.h"

@interface AccountViewController  () {
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIImageView *imgView;
}

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width, 600)];
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onEdit:(id)sender {
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    AccountEditViewController *homeView = (AccountEditViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"AccountEditViewController"];
    [self.navigationController pushViewController:homeView animated:YES];
}

- (IBAction)onPhoto:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    imgView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

@end
