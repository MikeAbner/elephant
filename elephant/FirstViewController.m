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
    //memoriesList        = [[UIViewController alloc] initWithNibName:@"MemoriesList" bundle:nil];
    //memoriesCalendar    = [[UIViewController alloc] initWithNibName:@"MemoriesCalendar" bundle:nil];
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
    UISegmentedControl *segment = (UISegmentedControl *) sender;
    NSLog(@"segment changed!");
    if (segment.selectedSegmentIndex == 0) {
        NSLog(@"SELECTED INDEX IS 0");
        NSLog(@"list is hidden? %i", memoriesList.isHidden);
        NSLog(@"calendar is hidden? %i", memoriesCalendar.isHidden);
        [memoriesList setHidden:NO];
        [memoriesCalendar setHidden:YES];
    }
    else {
        NSLog(@"SELECTED INDEX IS 1");
        NSLog(@"list is hidden? %i", memoriesList.isHidden);
        NSLog(@"calendar is hidden? %i", memoriesCalendar.isHidden);
        [memoriesList setHidden:YES];
        [memoriesCalendar setHidden:NO];
    }
}
@end
