//
//  MemoriesList.h
//  elephant
//
//  Created by Michael Abner on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MemoriesList : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) NSMutableArray *memories;

-(UIImage *)imageForDate:(NSDate *)date;

@end
