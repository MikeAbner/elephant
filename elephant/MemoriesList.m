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
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"basicCell"];
    NSString *text          = [item objectForKey:@"title"];
    NSString *dateAsString  = [item objectForKey:@"date"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'"];
    NSDate *date = [dateFormatter dateFromString:dateAsString];
    [dateFormatter setDateFormat:@"MM/dd"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    //UIImage *dateImage = [self imageForDate:date];
    cell.textLabel.text = formattedDate;
    cell.textLabel.textAlignment = UITextAlignmentLeft;
    [cell.textLabel sizeToFit];
    cell.detailTextLabel.text = text;
    cell.detailTextLabel.textAlignment = UITextAlignmentLeft;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.imageView.image = dateImage;
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

// LOCAL METHODS

-(UIImage *)imageForDate:(NSDate *)date {
    return [UIImage imageNamed:@"first.png"];
}

@end
