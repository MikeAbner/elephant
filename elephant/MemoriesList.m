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
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [item objectForKey:@"title"];
    cell.detailTextLabel.text = [item objectForKey:@"date"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [memories count];
}


// DELEGATE METHODS


@end
