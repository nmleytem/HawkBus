//
//  HawkBusHomeViewController.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusHomeViewController.h"

@interface HawkBusHomeViewController ()
@property (weak, nonatomic) IBOutlet UITableView *recentlyUsedTable;
@property (weak, nonatomic) IBOutlet UITableView *favoritesTable;

@end

@implementation HawkBusHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark table view delegate

/**- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)numberOfRowsInSection:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath{
    NSInteger cellNum = indexPath.row;
    // do some stuff
    
 }**/   




@end
