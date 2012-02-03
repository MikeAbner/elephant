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
    NSLog(@"cellForRowAtIndexPath called!");
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = @"Test";
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"numberOfRowsInSection called!");
    return 10;
}


// DELEGATE METHODS

-(void)reloadData {
    NSLog(@"RELOADING DATA!");

}


-(void)initState {
    NSMutableArray *memories = [[NSMutableArray alloc] init];
    for (int i = 0; i < 10; i++) {
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
