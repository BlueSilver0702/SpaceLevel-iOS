//
//  ListSubViewController.m
//  Online Book
//
//  Created by User on 4/26/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ListSubViewController.h"
#import "DetailViewController.h"
#import "Project.h"

@interface ListSubViewController ()
{
    IBOutlet UILabel *titleLab;
}
@end

@implementation ListSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    titleLab.text = self.locationStr;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ThirdCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UIScrollView * scrollView = (UIScrollView*) [cell viewWithTag:1];
    UILabel *currencyLabel = (UILabel *) [cell viewWithTag:2];
    UILabel *titleLabel = (UILabel *) [cell viewWithTag:3];
    UILabel *desLabel = (UILabel *) [cell viewWithTag:4];
    
    NSInteger imageIndex = indexPath.row + 1;
    for (int i=0; i<6; i++) {
        UIImageView *imageViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(i*scrollView.frame.size.width, 0, scrollView.frame.size.width, scrollView.frame.size.height)];
        [imageViewLeft setImage:[UIImage imageNamed:[NSString stringWithFormat:@"gal_%ld.jpg", imageIndex]]];
        imageViewLeft.clipsToBounds = YES;
        [scrollView addSubview:imageViewLeft];
        imageIndex ++;
    }
    [scrollView setContentSize:CGSizeMake(6*scrollView.frame.size.width, scrollView.frame.size.height)];
    scrollView.userInteractionEnabled = NO;
    [cell.contentView addGestureRecognizer:scrollView.panGestureRecognizer];
    
    if (indexPath.row == 0) {
        titleLabel.text = @"Mantri Courtyard - 2 & 3 BHK Homes";
        currencyLabel.text = @"INR 1.16 cr*";
        desLabel.text = @"Off Kanakpura - Bengaluru";
    } else if (indexPath.row == 1) {
        titleLabel.text = @"The Promont";
        currencyLabel.text = @"INR 1.16 cr*";
        desLabel.text = @"Residential - TATA Housing - Bengaluru";
    } else if (indexPath.row == 2) {
        titleLabel.text = @"Myst, Kasauli";
        currencyLabel.text = @"INR 1.16 cr*";
        desLabel.text = @"Residential - Mantri - Bengaluru";
    } else {
        titleLabel.text = @"Amantra, Mumbai";
        currencyLabel.text = @"INR 1.16 cr*";
        desLabel.text = @"Residential - Mantri - Bengaluru";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    DetailViewController *currencyView = (DetailViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"DetailViewController"];
    currencyView.selectedNum = indexPath.row;
    
    Project *projectInfo = [[Project alloc] init];
    projectInfo.p_about = @"Introducing Mantri Courtyard, Row villas with a private green space that fills joy in your life. Get back to a home with a private outdoor space, a space that fills you up with happiness, a space where you can recharge, refresh and rebalance yourself. Find that space at Mantri Courtyard and rediscover the joy of living.";
    projectInfo.p_aboutImg = @"about_img.jpg";
    projectInfo.p_address = @"Off Kanakpura";
    projectInfo.p_amenities = @"Outdoor Amenities\n\n- Swimming pool - multifunctional pool\nincluding a bubble pool, an activity\npool and a toddlers pool\n- Outdoor party area\n- landscape gardens\n- Children's play area\n- Tennis court\n\nIndoor Amenities / Clubhouse\n\n- A luxurious 15,650 sq.ft Clubhouse\n- A well-equipped Health Club with air conditioning\n- Gymnasium\n- Steam room\n- Sauna room\n- Massage room\n- Squash court\n- Table Tennis\n- Pool Table\n- TV room/ Mini Theatre\n- Karaoke Room, Dance/Aerobics flor with Music System\n- Tele-Medicine Centre and Health Room\n- Convenience Store\n- Banquet Hall\n- Chess/Carrom and other indoor Games\n- Library/Reading Room";
    projectInfo.p_company = @"Mantri";
    projectInfo.p_facebook = @"https://www.facebook.com/MantriDevelopersPvtLtd";
    projectInfo.p_fav = NO;
    projectInfo.p_gallery = [NSArray arrayWithObjects:@"gal_1.jpg", @"gal_2.jpg", @"gal_3.jpg", @"gal_4.jpg", @"gal_5.jpg", @"gal_6.jpg", nil];
    projectInfo.p_google = @"https://plus.google.com/u/0/+MantriIn/posts";
    projectInfo.p_lan = 12.933998;
    projectInfo.p_location = @"Bengaluru";
    projectInfo.p_logo = @"courtyard-logo.png";
    projectInfo.p_lon = 77.6833199999;
    projectInfo.p_name = @"Courtyard";
    projectInfo.p_phone = @"1800-121-0000";
    projectInfo.p_email = @"Enquiry@mantri.in";
    projectInfo.p_pinterest = @"https://www.pinterest.com/mantrideveloper/";
    projectInfo.p_plan = [NSArray arrayWithObjects:@"floor_1.jpg", @"floor_2.jpg", @"floor_3.jpg", @"floor_4.jpg", @"floor_5.jpg", @"floor_6.jpg", nil];
    projectInfo.p_price = @"2 & 3 BHK";
    projectInfo.p_site = @"http://www.mantri.in/courtyard/";
    projectInfo.p_specifications = @"";
    projectInfo.p_twitter = @"https://twitter.com/mantriblr";
    projectInfo.p_type = @"Homes";
    
    currencyView.projectInfo = projectInfo;
    
    [self.navigationController pushViewController:currencyView animated:YES];
}

- (IBAction)onExit:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
