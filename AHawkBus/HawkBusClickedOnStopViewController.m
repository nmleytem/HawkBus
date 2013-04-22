//
//  HawkBusFirstViewController.m
//  HawkBus
//
//  Created by Nick & WonJae on 3/25/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusClickedOnStopViewController.h"
#import "HawkBusStopViewController.h"


#define METERS_PER_MILE 1609.344

@interface HawkBusClickedOnStopViewController ()
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationBar;
@property (weak, nonatomic) IBOutlet UITableView *StopsListView;
@end

@implementation HawkBusClickedOnStopViewController


- (void) viewWillAppear:(BOOL)animated{

}
- (void)viewDidLoad
{
    [super viewDidLoad];
	/// Do any additional setup after loading the view, typically from a nib.
    //Changes title of nav bar to that of the stop
    self.navigationBar.title = self.nameString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
