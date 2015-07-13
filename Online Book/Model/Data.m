//
//  Data.m
//  Online Book
//
//  Created by User on 7/7/15.
//  Copyright (c) 2015 Xian A. All rights reserved.
//

#import "Data.h"
#import "Project.h"

@implementation Data

+ (NSMutableArray *) getProjectList {
    NSMutableArray *dataList = [[NSMutableArray alloc] init];
    
    // Courtyard
    Project *projectCourtyard = [[Project alloc] init];
    projectCourtyard.p_about = @"Introducing Mantri Courtyard, Row villas with a private green space that fills joy in your life. Get back to a home with a private outdoor space, a space that fills you up with happiness, a space where you can recharge, refresh and rebalance yourself. Find that space at Mantri Courtyard and rediscover the joy of living.";
    projectCourtyard.p_aboutImg = @"about_img.jpg";
    projectCourtyard.p_address = @"Off Kanakpura";
    projectCourtyard.p_amenities = @"Outdoor Amenities\n\n- Swimming pool\n- multifunctional pool\nincluding a bubble pool, an activity\npool and a toddlers pool\n- Outdoor party area\n- landscape gardens\n- Children's play area\n- Tennis court\n\nIndoor Amenities / Clubhouse\n\n- A luxurious 15,650 sq.ft Clubhouse\n- A well-equipped Health Club with air conditioning\n- Gymnasium\n- Steam room\n- Sauna room\n- Massage room\n- Squash court\n- Table Tennis\n- Pool Table\n- TV room/ Mini Theatre\n- Karaoke Room, Dance/Aerobics flor with Music System\n- Tele-Medicine Centre and Health Room\n- Convenience Store\n- Banquet Hall\n- Chess/Carrom and other indoor Games\n- Library/Reading Room";
    projectCourtyard.p_company = @"Mantri";
    projectCourtyard.p_facebook = @"https://www.facebook.com/MantriDevelopersPvtLtd";
    projectCourtyard.p_fav = NO;
    projectCourtyard.p_gallery = [NSArray arrayWithObjects:@"gal_1.jpg", @"gal_2.jpg", @"gal_3.jpg", @"gal_4.jpg", @"gal_5.jpg", @"gal_6.jpg", nil];
    projectCourtyard.p_google = @"https://plus.google.com/u/0/+MantriIn/posts";
    projectCourtyard.p_lan = 12.933998;
    projectCourtyard.p_location = @"Bengaluru";
    projectCourtyard.p_logo = @"courtyard-logo.png";
    projectCourtyard.p_lon = 77.6833199999;
    projectCourtyard.p_name = @"Courtyard";
    projectCourtyard.p_phone = @"1800-121-0000";
    projectCourtyard.p_email = @"Enquiry@mantri.in";
    projectCourtyard.p_pinterest = @"https://www.pinterest.com/mantrideveloper/";
    projectCourtyard.p_plan = [NSArray arrayWithObjects:@"floor_1.jpg", @"floor_2.jpg", @"floor_3.jpg", @"floor_4.jpg", @"floor_5.jpg", @"floor_6.jpg", nil];
    projectCourtyard.p_price = @"INR 1.16 cr*";
    projectCourtyard.p_site = @"http://www.mantri.in/courtyard/";
    projectCourtyard.p_specifications = @"";
    projectCourtyard.p_twitter = @"https://twitter.com/mantriblr";
    projectCourtyard.p_type = @"Homes";
    projectCourtyard.p_title = @"Mantri Courtyard - 2 & 3 BHK Homes";
    projectCourtyard.p_desc = @"Off Kanakpura - Bengaluru";
    projectCourtyard.p_mapDesc = @"Promont Hill, SY No.168, Off Lttamadu Main Road, Hosakerehalli Village, Banashankari Stage III, Bengaluru 560085";
    [dataList addObject:projectCourtyard];
    
    // Urbana
    Project *projectUrbana = [[Project alloc] init];
    projectUrbana.p_about = @"We at Ozonegroup are committed to providing you a better quality of life and redefining the standard of living through innovative real estate products. We distinctively differentiate ourselves through our committed focus on three core values – Customer Centricity, Quality and Transparency. We have consistently stood at the forefront of design, raising the bar for functionality, infrastructure and eco-friendliness.";
    projectUrbana.p_aboutImg = @"about-urbana.jpg";
    projectUrbana.p_address = @"North Bangalore";
    projectUrbana.p_amenities = @"Outdoor Amenities\n\n- Toddlers Pool\n- Tennis Court\n- Swiming Pool\n- Cricket Pitches\n- Yoga and Meditation Area\n- Children's Play Area Sand Pit\n- Bicycle Track\n- Snakes and Ladders\n- Climbing Wall\n- Dry/ Rock/ Maze Garden\n- Fountain Plaza\n- Large Landscaped Areas\n- Skate Park\n- Senior Citizen Areas\n- Skating Rink\n- Amphitheatre\n- Basketball Court\n\nCommon Clubhouse Facilities\n\n- Gymnasium\n- Health club - Steam, Sauna and Jacuzzi\n- Table Tennis\n- Pool/ Billiards\n- Bowling Alley\n- Multi-purpose hall\n- Kids Gaming Zone\n- Departmental/ Convenience store\n- 25 Seater Mini-Theatre\n- Indoor Badminton court\n- Lounge Bar\n- Alfresco Dining\n- Creche/ Day Care Center\n- Business Center\n- ATM\n- Laundromat\n- Library/ Reading Room\n- Office space for Association\n- Salon - Men and Women";
    projectUrbana.p_company = @"Ozone Group";
    projectUrbana.p_facebook = @"https://www.facebook.com/ozoneurbana";
    projectUrbana.p_fav = NO;
    projectUrbana.p_gallery = [NSArray arrayWithObjects:@"gal-ozoneurbana1.jpg", @"gal-ozoneurbana2.jpg", @"gal-ozoneurbana3.jpg", @"gal-ozoneurbana4.jpg", @"gal-ozoneurbana5.jpg", nil];
    projectUrbana.p_google = @"https://plus.google.com/+Ozoneurbana";
    projectUrbana.p_lan = 13.210817;
    projectUrbana.p_location = @"Bengaluru";
    projectUrbana.p_logo = @"urbana-logo.png";
    projectUrbana.p_lon = 77.65965499999993;
    projectUrbana.p_name = @"Urbana";
    projectUrbana.p_phone = @"1800-419-8811";
    projectUrbana.p_email = @"enquiry@ozoneurbana.com";
    projectUrbana.p_pinterest = @"";
    projectUrbana.p_plan = [NSArray arrayWithObjects:@"floor-ozoneurbana1.jpg", @"floor-ozoneurbana2.jpg", @"floor-ozoneurbana3.jpg", @"floor-ozoneurbana4.jpg", @"floor-ozoneurbana5.jpg", @"floor-ozoneurbana6.jpg", @"floor-ozoneurbana7.jpg", @"floor-ozoneurbana8.jpg", @"floor-ozoneurbana9.jpg", @"floor-ozoneurbana10.jpg", nil];
    projectUrbana.p_price = @"INR 57 lakhs*";
    projectUrbana.p_site = @"http://www.ozoneurbana.com";
    projectUrbana.p_specifications = @"";
    projectUrbana.p_twitter = @"";
    projectUrbana.p_type = @"Homes";
    projectUrbana.p_title = @"Ozone URBANA";
    projectUrbana.p_desc = @"Ozone Urbana - North Bengaluru";
    projectUrbana.p_mapDesc = @"BangaloreHyderabad Hwy, Yerthiganahalli, Udayagiri, Karnataka 562157, India";
    [dataList addObject:projectUrbana];
    
//    [dataList addObject:projectCourtyard];
//    [dataList addObject:projectUrbana];

    return dataList;
}

@end
