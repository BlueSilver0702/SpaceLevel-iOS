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
#import "Data.h"

@interface ListSubViewController ()
{
    IBOutlet UILabel *titleLab;
    NSMutableArray *dataList;
}
@end

@implementation ListSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    dataList = [Data getProjectList];
    
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
    return dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ThirdCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    UIScrollView * scrollView = (UIScrollView*) [cell viewWithTag:1];
    UILabel *currencyLabel = (UILabel *) [cell viewWithTag:2];
    UILabel *titleLabel = (UILabel *) [cell viewWithTag:3];
    UILabel *desLabel = (UILabel *) [cell viewWithTag:4];
    
    Project *projectInfo = [dataList objectAtIndex:indexPath.row];
    NSArray *proArr = projectInfo.p_gallery;
    
    for (int i=0; i<proArr.count; i++) {
        UIImageView *imageViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(i*scrollView.frame.size.width, 0, scrollView.frame.size.width, scrollView.frame.size.height)];
        [imageViewLeft setImage:[UIImage imageNamed:[proArr objectAtIndex:i]]];
        imageViewLeft.clipsToBounds = YES;
        [scrollView addSubview:imageViewLeft];
    }
    [scrollView setContentSize:CGSizeMake(proArr.count*scrollView.frame.size.width, scrollView.frame.size.height)];
    scrollView.userInteractionEnabled = NO;
    [cell.contentView addGestureRecognizer:scrollView.panGestureRecognizer];

    titleLabel.text = projectInfo.p_title;
    currencyLabel.text = projectInfo.p_price;
    desLabel.text = projectInfo.p_desc;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle: nil];
    DetailViewController *currencyView = (DetailViewController *)[mainStoryboard instantiateViewControllerWithIdentifier: @"DetailViewController"];
    currencyView.selectedNum = indexPath.row;
    
    Project *projectInfo = [dataList objectAtIndex:indexPath.row];
    currencyView.projectInfo = projectInfo;
    
    [self.navigationController pushViewController:currencyView animated:YES];
}

- (IBAction)onExit:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
