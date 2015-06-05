//
//  ListData.h
//  Online Book
//
//  Created by User on 4/30/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"

#define BENGALURU @"Bengaluru"
#define BHUBANESWAR @"Bhubaneswar"
#define KAITH @"Kaith Rdge"
#define KOLKATA @"Kolkata"
#define LONARALA @"Lonarala"
#define MUMBAI @"Mumbai"
#define NCR @"NCR"

#define Residential @"Residential"
#define Retail @"Retail"
#define Offices @"Offices"
#define Hospitality @"Hospitality"
#define Education @"Education"

@interface ListData : NSObject
{
    NSArray *dataArr;
}

+ (ListData *)sharedInstance;
- (NSArray *) getLocationList;
- (NSArray *) getListByLocationName:(NSString *)locationName;
- (NSArray *) getListByCompanyName:(NSString *) companyName;
- (NSArray *) searchListByLocation:(NSString *) locationName;

@end
