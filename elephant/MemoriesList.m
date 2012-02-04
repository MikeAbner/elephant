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
    NSDictionary    *item = (NSDictionary *) [memories objectAtIndex:indexPath.row];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"basicCell"];
    NSString *text          = [item objectForKey:@"title"];
    NSString *dateAsString  = [item objectForKey:@"date"];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy'-'MM'-'dd'"];
    NSDate *date = [dateFormatter dateFromString:dateAsString];
    //[dateFormatter setDateFormat:@"MMM d"];
    //NSString *formattedDate = [dateFormatter stringFromDate:date];
    UIImage *dateImage = [self imageForDate:date];
    cell.textLabel.text = text;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = dateImage;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [memories count];
}


// DELEGATE METHODS

// LOCAL METHODS

-(UIImage *)imageForDate:(NSDate *)date {
    return [UIImage imageNamed:@"first.png"];
}

@end
