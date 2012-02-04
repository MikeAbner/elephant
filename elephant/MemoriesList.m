//
//  MemoriesList.m
//  elephant
//
//  Created by Michael Abner on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MemoriesList.h"

@implementation MemoriesList

// DATASOURCE METHODS

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary    *item = (NSDictionary *) [memories objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [item objectForKey:@"title"];
    cell.detailTextLabel.text = [item objectForKey:@"date"];
    NSLog( @"cell? %@", cell);
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [memories count];
}


// DELEGATE METHODS


-(void)initState {
    memories = [[NSMutableArray alloc] init];
    for (int i = 0; i < 4; i++) {
        NSMutableDictionary *item = [[NSMutableDictionary alloc] init];
        NSString *title = [[NSString alloc] initWithFormat:@"Memory #%i", i];
        NSString *date  = [[NSString alloc] initWithFormat:@"2012-01-0%i", i];
        [item setObject:title forKey:@"title"];
        [item setObject:date forKey:@"date"];
        [memories addObject:item];
    }
    
    [self reloadData];
}

-(void)clearState {
    
}

@end
