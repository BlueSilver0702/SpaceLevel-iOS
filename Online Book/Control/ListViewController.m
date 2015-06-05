//
//  ListViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ListViewController.h"
#import <SMPageControl/SMPageControl.h>
#import "ListSubViewController.h"

static NSString * const sampleDescription1 = @"Get used to oversized Living\n \xC2\xA9 Copyright  Online Booking Apartment 2015\n all rights reserved";
static NSString * const sampleDescription2 = @"We are truly inspired by human life - It's diversity in culture, intricacies, colors, and joys of its vast experience. We design green developments endeavoring to create homes that manifest the peaceful coexistence of human life within its natural ecosystem.";
static NSString * const sampleDescription3 = @"We share the aspirations of all home owners across the country. From value homes to premium developments, our projects throughout India, Focus on offering quality of Life, comfort, and dignity to customers.";
static NSString * const sampleDescription4 = @"Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit.";

@interface ListViewController ()
{
    UIView *rootView;
    EAIntroView *_intro;
}
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    rootView = self.navigationController.view;
    
    EAIntroPage *page1 = [EAIntroPage page];
    page1.title = @"Online Booking System";
    page1.titlePositionY = 240;
    page1.desc = sampleDescription1;
    page1.descPositionY = 220;
    page1.bgImage = [UIImage imageNamed:@"bg-0.png"];
    page1.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"big-logo.png"]];
        page1.titleIconView.frame = CGRectMake(0, 0, 160, 104);
    page1.titleIconPositionY = 140;
    page1.showTitleView = NO;
    
    EAIntroPage *page2 = [EAIntroPage page];
    page2.title = @"Inspired By Human Life";
    page2.titlePositionY = 260;
    page2.desc = sampleDescription2;
    page2.descPositionY = 240;
    page2.bgImage = [UIImage imageNamed:@"bg-4.png"];
    page2.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tata-logo.png"]];
    page2.titleIconView.frame = CGRectMake(0, 0, 230, 40);
    page2.titleIconPositionY = 170;
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.title = @"Next Level Of Lifestyle";
    page3.titlePositionY = 260;
    page3.desc = sampleDescription3;
    page3.descPositionY = 240;
    page3.bgImage = [UIImage imageNamed:@"bg-1.png"];
    page3.titleIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mantri-logo.png"]];
    page3.titleIconView.frame = CGRectMake(0, 0, 100, 73);
    page3.titleIconPositionY = 140;
    
    EAIntroView *intro = [[EAIntroView alloc] initWithFrame:rootView.bounds andPages:@[page1,page2,page3]];
    
    intro.tapToNext = YES;
    [intro setDelegate:self];
    
    SMPageControl *pageControl = [[SMPageControl alloc] init];
    pageControl.pageIndicatorImage = [UIImage imageNamed:@"pageDot"];
    pageControl.currentPageIndicatorImage = [UIImage imageNamed:@"selectedPageDot"];
    [pageControl sizeToFit];
    intro.pageControl = (UIPageControl *)pageControl;
    intro.pageControlY = 80.f;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 10, 10)];
    [btn setBackgroundImage:[UIImage imageNamed:@"icon-exit.png"] forState:UIControlStateNormal];
    intro.skipButton = btn;
    intro.skipButtonY = 800.f;

    [intro showInView:rootView animateDuration:0.3];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < 100) {
        static NSString *CellIdentifier = @"FirstCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        UIImageView * imageViewLeft = (UIImageView*) [cell viewWithTag:1];
        UILabel *nameLabel = (UILabel *) [cell viewWithTag:2];
        
        NSInteger imageIndex = indexPath.row + 1;
        [imageViewLeft setImage:[UIImage imageNamed:[NSString stringWithFormat:@"list_%ld.jpg", imageIndex]]];
        switch (indexPath.row) {
            case 0:
                nameLabel.text = @"Bengaluru";
                break;
            case 1:
                nameLabel.text = @"Chennai";
                break;
            case 2:
                nameLabel.text = @"Hyderabad";
                break;
            case 3:
                nameLabel.text = @"Mumbai";
                break;
            case 4:
                nameLabel.text = @"Delhi";
                break;
            case 5:
                nameLabel.text = @"Gurgaon";
                break;
            case 6:
                nameLabel.text = @"Noida";
                break;
            default:
                nameLabel.text = @"Greater Noida";
                break;
        }
        imageViewLeft.clipsToBounds = YES;
        return cell;
    } else {
        static NSString *CellIdentifier = @"SecondCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        UIImageView * imageViewLeft = (UIImageView*) [cell viewWithTag:1];
        
        NSInteger imageIndex = indexPath.row + 1;
        [imageViewLeft setImage:[UIImage imageNamed:[NSString stringWithFormat:@"list_%ld.jpg", imageIndex]]];
        imageViewLeft.clipsToBounds = YES;
        UILabel *nameLabel = (UILabel *) [cell viewWithTag:2];
        UIButton *descBtn = (UIButton *) [cell viewWithTag:4];
        if (indexPath.row == 7) {
            nameLabel.text = @"TATA Housing Company\n Projects";
            [descBtn setTitle:@"5 listings" forState:UIControlStateNormal];
        } else {
            nameLabel.text = @"Mantri Company\n Projects";
            [descBtn setTitle:@"7 listings" forState:UIControlStateNormal];
        }
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    ListSubViewController *currencyView = (ListSubViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"ListSubViewController"];
    if (indexPath.row >= 7) {
        currencyView.isCompany = YES;
    } else {
        currencyView.isCompany = NO;
        NSString *nameLabel = @"";
        switch (indexPath.row) {
            case 0:
                nameLabel = @"Bengaluru";
                break;
            case 1:
                nameLabel = @"Chennai";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            case 2:
                nameLabel = @"Hyderabad";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            case 3:
                nameLabel = @"Mumbai";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            case 4:
                nameLabel = @"Delhi";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            case 5:
                nameLabel = @"Gurgaon";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            case 6:
                nameLabel = @"Noida";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
            default:
                nameLabel = @"Greater Noida";
                [self.navigationController pushViewController:[mainStoryboard instantiateViewControllerWithIdentifier: @"ComingViewController"] animated:YES];
                return;
                break;
        }
        
        
        currencyView.locationStr = nameLabel;

    }
    
    [self.navigationController pushViewController:currencyView animated:YES];
}

- (IBAction)openMenu:(id)sender
{
    [[SlideNavigationController sharedInstance] toggleRightMenu];
}

@end
