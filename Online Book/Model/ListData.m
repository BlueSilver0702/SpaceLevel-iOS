//
//  ListData.m
//  Online Book
//
//  Created by User on 4/30/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "ListData.h"
#import "Project.h"

@implementation ListData

static ListData *listInstance;

+ (ListData *)sharedInstance
{
    if (!listInstance)
        NSLog(@"ListData has not been initialized. Either place one in your storyboard or initialize one in code");
    
    return listInstance;
}

- (id)init
{
    if (self = [super init])
    {
        [self setup];
    }
    
    return self;
}

- (void) setup {
//    Project *p1 = [[Project alloc] init];
//    p1.p_name = @"The Cascades"; p1.p_type = Residential; p1.p_phone = @"1800 3004 8282 (IND)"; p1.p_site = @"http://tatahousing.in/thecascades/"; p1.p_price = 4; p1.p_gallery = @"ga_"; p1.p_company = @"TATA Housing"; p1.p_location = @"Bengaluru"; p1.p_logo = @"";
//    Project *p2 = [[Project alloc] init];
//    p.p_name = @"The Cascades"; p2.p_type = Residential; p2.p_phone = @"1800 3004 8282 (IND)"; p1.p_site = @"http://tatahousing.in/thecascades/"; p1.p_price = 4; p1.p_gallery = @"ga_"; p1.p_company = @"TATA Housing"; p1.p_location = @"Bengaluru"; p.p_logo = @"";
//    Project *p3 = [[Project alloc] init];
//    Project *p4 = [[Project alloc] init];
//    Project *p5 = [[Project alloc] init];
//    Project *p6 = [[Project alloc] init];
//    Project *p7 = [[Project alloc] init];
//    Project *p8 = [[Project alloc] init];
//    Project *p9 = [[Project alloc] init];
//    Project *p10 = [[Project alloc] init];
//    Project *p11 = [[Project alloc] init];
//    Project *p12 = [[Project alloc] init];
//    Project *p13 = [[Project alloc] init];
//    Project *p14 = [[Project alloc] init];
//    Project *p15 = [[Project alloc] init];
//    Project *p16 = [[Project alloc] init];
//    Project *p17 = [[Project alloc] init];
//    Project *p18 = [[Project alloc] init];
//    Project *p19 = [[Project alloc] init];
//    Project *p20 = [[Project alloc] init];
//    Project *p21 = [[Project alloc] init];
//    Project *p22 = [[Project alloc] init];
//    Project *p23 = [[Project alloc] init];
//    Project *p24 = [[Project alloc] init];
//    Project *p25 = [[Project alloc] init];
//    Project *p26 = [[Project alloc] init];
//    Project *p27 = [[Project alloc] init];
//    Project *p28 = [[Project alloc] init];
//    Project *p29 = [[Project alloc] init];
//    Project *p30 = [[Project alloc] init];
//    Project *p31 = [[Project alloc] init];
//    Project *p32 = [[Project alloc] init];
//    
//    dataArr = [[NSArray alloc] initWithObjects:p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32, nil];
}

- (NSArray *) getLocationList
{
    return nil;
}

- (NSArray *) getListByLocationName:(NSString *)locationName
{
    return nil;
}

- (NSArray *) getListByCompanyName:(NSString *) companyName
{
    return nil;
}

- (NSArray *) searchListByLocation:(NSString *) locationName
{
    return nil;
}

@end
