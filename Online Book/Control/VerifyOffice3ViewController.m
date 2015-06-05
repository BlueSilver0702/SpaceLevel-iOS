//
//  VerifyOffice3ViewController.m
//  Online Book
//
//  Created by User on 5/3/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "VerifyOffice3ViewController.h"

@interface VerifyOffice3ViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation VerifyOffice3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onExit:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onTakeFrom:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}

- (IBAction)onTakeLib:(id)sender {

    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {

//    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    [self.navigationController pushViewController:[[UIStoryboard storyboardWithName:@"Main" bundle: nil] instantiateViewControllerWithIdentifier: @"VerifyOnlineViewController"] animated:YES];
}

@end
