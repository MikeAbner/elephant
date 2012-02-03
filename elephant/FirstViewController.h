//
//  FirstViewController.h
//  elephant
//
//  Created by Michael Abner on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemoriesList.h"
#import "MemoriesCalendar.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIBarButtonItem *segment;
@property (weak, nonatomic) IBOutlet MemoriesList *memoriesList;
@property (weak, nonatomic) IBOutlet MemoriesCalendar *memoriesCalendar;

- (IBAction)segmentDidChange:(id)sender;
@end


