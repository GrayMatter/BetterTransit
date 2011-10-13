    //
//  BTScheduleViewController.m
//  BetterTransit
//
//  Created by Yaogang Lian on 10/19/10.
//  Copyright 2010 Happen Next. All rights reserved.
//

#import "BTScheduleViewController.h"

#ifdef FLURRY_KEY
#import "FlurryAPI.h"
#endif


@implementation BTScheduleViewController

@synthesize route, subrouteId;


#pragma mark -
#pragma mark Initialization

- (id)init
{
	self = [super initWithNibName:@"BTScheduleViewController" bundle:[NSBundle mainBundle]];
	if (self) {
#ifdef HIDE_BOTTOM_BAR
		self.hidesBottomBarWhenPushed = YES;
#endif
	}
	return self;
}


#pragma mark -
#pragma mark View life cycle

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
#ifdef FLURRY_KEY
	NSDictionary *flurryDict = [NSDictionary dictionaryWithObjectsAndKeys:route.shortName, @"routeID", nil];
	[FlurryAPI logEvent:@"DID_SHOW_SCHEDULE" withParameters:flurryDict];
#endif
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning
{
	DLog(@">>> %s <<<", __PRETTY_FUNCTION__);
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
	DLog(@">>> %s <<<", __PRETTY_FUNCTION__);
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc
{
	DLog(@">>> %s <<<", __PRETTY_FUNCTION__);
	[route release], route = nil;
	[subrouteId release], subrouteId = nil;
    [super dealloc];
}


@end
