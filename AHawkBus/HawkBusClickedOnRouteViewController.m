//
//  HawkBusClickedOnRouteViewController.m
//  HawkBus
//
//  Created by uicsi10 on 4/20/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusClickedOnRouteViewController.h"
#import "HawkBusStopsList.h"

@interface HawkBusClickedOnRouteViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation HawkBusClickedOnRouteViewController
HawkBusStopsList *routesList;

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
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //NSInteger cellnum = indexPath.row;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stop"];
	/*cell.textLabel.text = [stopsList stopNameForIndex:cellnum];
	cell.detailTextLabel.text = [stopsList stopNumberForIndex:cellnum];*/
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}
@end
