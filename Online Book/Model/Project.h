//
//  Project.h
//  Online Book
//
//  Created by User on 4/30/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject

// basic
@property (nonatomic, retain) NSString *p_name;
@property (nonatomic, retain) NSString *p_company;
@property (nonatomic, retain) NSString *p_type;
@property (nonatomic, retain) NSString *p_price;
@property (nonatomic, retain) NSString *p_location;
@property (nonatomic, retain) NSString *p_address;
@property (nonatomic, retain) NSString *p_mapDesc;
@property (nonatomic, retain) NSString *p_logo;
@property (nonatomic, retain) NSString *p_title;
@property (nonatomic, retain) NSString *p_desc;

// location
@property (nonatomic) double p_lan;
@property (nonatomic) double p_lon;

// meta
@property (nonatomic, retain) NSString *p_site;
@property (nonatomic, retain) NSString *p_about;
@property (nonatomic, retain) NSString *p_aboutImg;
@property (nonatomic, retain) NSString *p_phone;
@property (nonatomic, retain) NSString *p_email;
@property (nonatomic, retain) NSArray *p_gallery;
@property (nonatomic) BOOL p_fav;
@property (nonatomic, retain) NSString *p_amenities;
@property (nonatomic, retain) NSArray *p_plan;
@property (nonatomic, retain) NSString *p_specifications;

// social
@property (nonatomic, retain) NSString *p_facebook;
@property (nonatomic, retain) NSString *p_twitter;
@property (nonatomic, retain) NSString *p_google;
@property (nonatomic, retain) NSString *p_pinterest;

@end
