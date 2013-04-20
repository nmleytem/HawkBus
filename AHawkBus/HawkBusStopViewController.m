//
//  HawkBusStopViewController.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStopViewController.h"
#import "hawkBusStopsList.h"
#import "HawkBusClickedOnStopViewController.h"
#import "hawkBusStop.h"

#define METERS_PER_MILE 1609.344
@interface HawkBusStopViewController ()<UITableViewDataSource, UITableViewDelegate> 

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITableView *stopsTableView;
@end

@implementation HawkBusStopViewController
HawkBusStopsList* stopsList;
/**CLLocationManager *locationManager;
CLLocation *location;
BOOL updatingLocation;
//Location Stuff

- (void)startLocationManager
{
    if ([CLLocationManager locationServicesEnabled]) {
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        [locationManager startUpdatingLocation];
        updatingLocation = YES;
        
        [self performSelector:@selector(didTimeOut:) withObject:nil afterDelay:60];
    }
}
- (void)stopLocationManager
{
    if (updatingLocation) {
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(didTimeOut:) object:nil];
        [locationManager stopUpdatingLocation];
        locationManager.delegate = nil;
        updatingLocation = NO;
    }
}
- (void)getLocation{
    if (updatingLocation) {
        [self stopLocationManager];
    } else {
        location = nil;
        [self startLocationManager];
    }
}
- (void)didTimeOut:(id)obj
{
    if (location == nil) {
        [self stopLocationManager];
    }
}**/

//Dealing with the List and Map
- (HawkBusStopsList *) stopsList {
	if (!stopsList) {
		stopsList = [[HawkBusStopsList alloc] init];
	}
	return  stopsList;
}
- (void) viewWillAppear:(BOOL)animated{
    // 1
    //CLLocationCoordinate2D zoomLocation;
    //zoomLocation.latitude = _mapView.userLocation.coordinate.latitude;
    //zoomLocation.longitude= _mapView.userLocation.coordinate.longitude;
    
    // 2
    
    // 3
    [_mapView setUserTrackingMode:(MKUserTrackingModeFollow)];
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(_mapView.userLocation.coordinate, METERS_PER_MILE, METERS_PER_MILE);
    [_mapView setRegion:viewRegion animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    
    //Drops a point on the map of the stop locations
    for (int i = 0; i < self.stopsList.numberOfStops; i++){
        CLLocationCoordinate2D  stopPoint;
        stopPoint.latitude = [self.stopsList objectAtIndex:i].stopLatitude;
        stopPoint.longitude = [self.stopsList objectAtIndex:i].stopLongitude;
        MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
        annotationPoint.coordinate = stopPoint;
        annotationPoint.title = [self.stopsList objectAtIndex:i].stopName;
        annotationPoint.subtitle = [self.stopsList objectAtIndex:i].stopNumber;
        [self.mapView addAnnotation:annotationPoint];
    }
    [stopsList sortByProximity:_mapView.userLocation.coordinate.latitude longitude:_mapView.userLocation.coordinate.longitude];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	HawkBusClickedOnStopViewController * childVC = segue.destinationViewController;
	NSInteger selectedCellNum = [self.stopsTableView indexPathForSelectedRow].row;
    childVC.nameString = [self.stopsList stopNameForIndex:selectedCellNum];
    childVC.numberString = [self.stopsList stopNumberForIndex:selectedCellNum];
    childVC.latitude = [self.stopsList stopLatitudeForIndex:selectedCellNum];
    childVC.longitude = [self.stopsList stopLongitudeForIndex:selectedCellNum];
    //childVC.stopsArray = [self.stopsList stopRoutesArrayForIndex:selectedCellNum];
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
    return [self.stopsList numberOfStops];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger cellnum = indexPath.row;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stop"];
	cell.textLabel.text = [self.stopsList stopNameForIndex:cellnum];
	cell.detailTextLabel.text = [self.stopsList stopNumberForIndex:cellnum];
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


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
/**#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError*)error
{
    [self stopLocationManager];
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(
                                                                          CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation %@", newLocation);
    if ([newLocation.timestamp timeIntervalSinceNow] < -5.0) {
        return;
    }
    if (newLocation.horizontalAccuracy < 0) {
        return;
    }
    
    CLLocationDistance distance = MAXFLOAT;
    if (location != nil) {
        distance = [newLocation distanceFromLocation:location];
    }
    
    if (location == nil || location.horizontalAccuracy > newLocation.
        horizontalAccuracy) {
        location = newLocation;
        if (newLocation.horizontalAccuracy <= locationManager.desiredAccuracy) {
            NSLog(@"*** We're done!");
            [self stopLocationManager];
        }
    }
}**/
@end
