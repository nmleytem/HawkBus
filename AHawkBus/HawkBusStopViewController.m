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
@interface HawkBusStopViewController ()<UITableViewDataSource, UITableViewDelegate>//, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITableView *stopsTableView;
@end

@implementation HawkBusStopViewController

/*CLLocation *location;
BOOL updatingLocation;

//Methods for getting location
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
- (void)didTimeOut:(id)obj
{
    if (location == nil) {
        [self stopLocationManager];
    }
}
- (void)getLocation{
    if (updatingLocation) {
        [self stopLocationManager];
    } else {
        location = nil;
        [self startLocationManager];
    }
}*/
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        //[self getLocation];
        //[stopsList sortByProximity:locationManager.location];
        //[self.stopsTableView reloadData];
    }
    return self;
}
//Dealing with the List and Map

- (void) viewWillAppear:(BOOL)animated{
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(locationManager.location.coordinate, METERS_PER_MILE/2, METERS_PER_MILE/2);
    [_mapView setRegion:viewRegion animated:YES];

}
- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    
    //Drops a point on the map of the stop locations
    for (int i = 0; i < [stopsList numberOfStops]; i++){
        CLLocationCoordinate2D  stopPoint;
        stopPoint.latitude = [stopsList objectAtIndex:i].stopLatitude;
        stopPoint.longitude = [stopsList objectAtIndex:i].stopLongitude;
        MKPointAnnotation *annotationPoint = [MKPointAnnotation new];
        annotationPoint.coordinate = stopPoint;
        annotationPoint.title = [stopsList objectAtIndex:i].stopName;
        annotationPoint.subtitle = [stopsList objectAtIndex:i].stopNumber;
        [self.mapView addAnnotation:annotationPoint];
    }
    MKPointAnnotation *currentLocation = [MKPointAnnotation new];
    currentLocation.coordinate = locationManager.location.coordinate;
    currentLocation.title = @"Current Location";
    [stopsList sortByProximity:locationManager.location];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	HawkBusClickedOnStopViewController * childVC = segue.destinationViewController;
	NSInteger selectedCellNum = [self.stopsTableView indexPathForSelectedRow].row;
    childVC.nameString = [stopsList stopNameForIndex:selectedCellNum];
    childVC.numberString = [stopsList stopNumberForIndex:selectedCellNum];
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
    return [stopsList numberOfStops];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSInteger cellnum = indexPath.row;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stop"];
	cell.textLabel.text = [stopsList stopNameForIndex:cellnum];
	cell.detailTextLabel.text = [stopsList stopNumberForIndex:cellnum];
    
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

/*#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError*)error
{
    if (error.code == kCLErrorLocationUnknown) {
        return;
    }
    [self stopLocationManager];
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(
                                                                          CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    if ([newLocation.timestamp timeIntervalSinceNow] < -5.0) {
        [stopsList sortByProximity:location];
        [self.stopsTableView reloadData];
        return;
    }
    if (newLocation.horizontalAccuracy < 0) {
        [stopsList sortByProximity:location];
        [self.stopsTableView reloadData];
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
            [self stopLocationManager];
            
            if (distance < 1.0) {
                NSTimeInterval timeInterval = [newLocation.timestamp timeIntervalSinceDate:
                                               location.timestamp];
                if (timeInterval > 10) {
                    [self stopLocationManager];
                }
            }
        }
    }
    [self.stopsTableView reloadData];
}*/


@end
