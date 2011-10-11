/*
 *  Settings.h
 *  BetterTransit
 *
 *  Created by Yaogang Lian on 11/9/09.
 *  Copyright 2009 Happen Next. All rights reserved.
 *
 */

#define PRODUCTION_READY

#define FAKE_LOCATION_LATITUDE 38.034039
#define FAKE_LOCATION_LONGITUDE -78.499479

// Custom settings
#define MAIN_DB @"HoosBus-GTFS"
#define ADD_TO_FAVS_PNG @"addToFavs.png"
#define NUM_STOPS 480
#define NUM_ROUTES 30
#define NUM_TILES 1
#define REFRESH_INTERVAL 20
#define TIMEOUT_INTERVAL 10.0
#define ENGLISH_UNIT

// Colors
#define COLOR_TABLE_VIEW_BG [UIColor colorWithRed:0.918 green:0.906 blue:0.906 alpha:1.0]
#define COLOR_TABLE_VIEW_SEPARATOR [UIColor colorWithRed:0.345 green:0.482 blue:0.580 alpha:0.25]
#define COLOR_TAB_BAR_BG [UIColor colorWithRed:0.0 green:0.42 blue:0.8 alpha:0.3]
#define COLOR_NAV_BAR_BG [UIColor colorWithRed:0.118 green:0.243 blue:0.357 alpha:1.0]

// Cross promotion
#define APP_LIST_XML @"http://artisticfrog.com/cross_promote/hoosbus/app_list.xml"

// FAQ, Blog
#define URL_FAQ @"http://artisticfrog.com/cross_promote/hoosbus/faq.xml"
#define URL_BLOG @"http://happenapps.tumblr.com"

// Email
#define STRING_EMAIL_SUBJECT @"Hey, check out HoosBus!"
#define STRING_EMAIL_BODY @"Hey!\n\nCheck out HoosBus, the must-have iPhone app for C'ville bus riders!\n\nDownload here for free:\nhttp://goo.gl/qQ1EJ\n\nHave a nice ride!"