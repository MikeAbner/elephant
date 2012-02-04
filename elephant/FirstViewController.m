//
//  FirstViewController.m
//  elephant
//
//  Created by Michael Abner on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize segment;
@synthesize memoriesList;
@synthesize memoriesCalendar;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Setting memoriesList datasource and delegate to memoriesList");
    memoriesList.dataSource = memoriesList;
    memoriesList.delegate   = memoriesList;
}

- (void)viewDidUnload
{
    [self setSegment:nil];
    [self setSegment:nil];
    [self setMemoriesList:nil];
    [self setMemoriesCalendar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)segmentDidChange:(id)sender {
     segment = (UISegmentedControl *) sender;
    if (segment.selectedSegmentIndex == 0) {
        [memoriesList setHidden:NO];
        [memoriesCalendar setHidden:YES];
        [memoriesCalendar clearState];
        [memoriesList initState];
    }
    else {
        [memoriesList setHidden:YES];
        [memoriesCalendar setHidden:NO];
        [memoriesList clearState];
        [memoriesCalendar initState];
    }
}
@end
