//
//  BTUIViewController.m
//  BetterTransit
//
//  Created by Yaogang Lian on 9/5/10.
//  Copyright 2010 Happen Next. All rights reserved.
//

#import "BTUIViewController.h"


@implementation BTUIViewController

@synthesize backdrop;

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	self.backdrop = [[UIImageView alloc] initWithFrame:self.view.bounds];
	backdrop.image = [UIImage imageNamed:@"backdrop.png"];
	[self.view insertSubview:backdrop atIndex:0];
	backdrop.alpha = 1.0;
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload
{
	[super viewDidUnload];	
	self.backdrop = nil;
}

@end
