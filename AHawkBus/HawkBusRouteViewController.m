//
//  HawkBusRouteViewController.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusRouteViewController.h"
#import "HawkBusRoutesList.h"
#import "HawkBusStopsList.h"
#import "HawkBusClickedOnRouteViewController.h"

@interface HawkBusRouteViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *routesTable;
+ (void) getStopsAlongRoute: (NSString *) routeID;
@end

@implementation HawkBusRouteViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        //[self getLocation];
        [stopsList sortByProximity:locationManager.location];
        //stopsAlongRoute = [stopsList getStopsAlongRoute:_routeID];
        
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	HawkBusClickedOnRouteViewController * childVC = segue.destinationViewController;
	NSInteger selectedCellNum = [self.routesTable indexPathForSelectedRow].row;
    childVC.routeName = [routesList routeNameForIndex:selectedCellNum];
    childVC.routeID = [routesList routeIDForIndex:selectedCellNum];
    childVC.center = [routesList centerCoordinateForIndex:selectedCellNum];
    childVC.neCoordinate = [routesList neCoordinateForIndex:selectedCellNum];
    childVC.swCoordinate = [routesList swCoordinateForIndex:selectedCellNum];
    childVC.routeCoordinates = [routesList locationsArrayForIndex:selectedCellNum];
    [HawkBusRouteViewController getStopsAlongRoute:[routesList routeIDForIndex:selectedCellNum]];
}

+ (void) getStopsAlongRoute: (NSString *) routeID{
    NSMutableArray *stopsAlongThisRoute;
    stopsAlongThisRoute = [NSMutableArray new];
    for(int i = 0; i < [stopsList numberOfStops]; i++){
        HawkBusStop *curStop = [stopsList stopForIndex:i];
        for(int j = 0; j < [[curStop getStopRoutes] count]; j++){
            if (routeID == [[curStop getStopRoutes] objectAtIndex:j]){
                [stopsAlongThisRoute addObject:curStop];
            }
        }
    }
    stopsAlongRoute = [NSMutableArray new];
    stopsAlongRoute = stopsAlongThisRoute;
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
    return [routesList numberOfRoutes];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger cellnum = indexPath.row;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"route"];
	cell.textLabel.text = [routesList routeNameForIndex:cellnum];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
