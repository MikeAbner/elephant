//
//  MemoriesList.m
//  elephant
//
//  Created by Michael Abner on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MemoriesList.h"

@implementation MemoriesList

@synthesize memories;

// DATASOURCE METHODS

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSMutableArray *month = (NSMutableArray *) [memories objectAtIndex:indexPath.section];
    NSDictionary    *item = (NSDictionary *) [month objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MemoryListCell"];
    
    //Date Formatting
    NSString *dateAsString  = [item objectForKey:@"date"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'"];
    NSDate *date = [dateFormatter dateFromString:dateAsString];
    [dateFormatter setDateFormat:@"EE MMM d"];
    
    // Cell Contents
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    NSString *text          = [item objectForKey:@"title"];
    
    // Cell Setup
    cell.textLabel.text = formattedDate;
    cell.detailTextLabel.text = text;

    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [memories count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    NSString *monthName = [[df monthSymbols] objectAtIndex:section];
    NSString *monthNameWithYear = [monthName stringByAppendingString:@" 2012"];
    return monthNameWithYear;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *month = [memories objectAtIndex:section];
    return [month count];
}


// DELEGATE METHODS

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"SELECTED A ROW!");
    //NSMutableArray  *month  = (NSMutableArray *) [memories objectAtIndex:indexPath.section];
    //NSDictionary    *item   = (NSDictionary *) [month objectAtIndex:indexPath.row];
    //[tableView deselectRowAtIndexPath:indexPath animated:NO];
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"accessoryButtonTapped!!!");
}


// LOCAL METHODS

-(UIImage *)imageForDate:(NSDate *)date {
    return [UIImage imageNamed:@"first.png"];
}

@end
