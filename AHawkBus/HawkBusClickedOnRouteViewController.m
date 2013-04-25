//
//  HawkBusClickedOnRouteViewController.m
//  HawkBus
//
//  Created by uicsi10 on 4/20/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusClickedOnRouteViewController.h"
#import "HawkBusClickedOnStopViewController.h"
#import <MapKit/MapKit.h>
#import <MapKit/MKPolyline.h>
#import <MapKit/MKCircle.h>



@interface HawkBusClickedOnRouteViewController ()<UITableViewDataSource, UITableViewDelegate>//,CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITableView *stopsTableView;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationBar;
@end

@implementation HawkBusClickedOnRouteViewController

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder]))
    {
        //[self getLocation];
        //[stopsList sortByProximity:locationManager.location];
        //stopsAlongRoute = [stopsList getStopsAlongRoute:_routeID];
        
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
    CLLocationCoordinate2D center;
    center.latitude = self.center.latitude;
    center.longitude = self.center.longitude;
    MKCoordinateSpan coordinateSpan;
    coordinateSpan.latitudeDelta = (self.neCoordinate.latitude - self.swCoordinate.latitude);
    coordinateSpan.longitudeDelta = (self.neCoordinate.longitude - self.swCoordinate.longitude);
    MKCoordinateRegion viewRegion = MKCoordinateRegionMake(center,coordinateSpan);
    [_mapView setRegion:viewRegion animated:YES];
}
- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay {
    if([overlay isKindOfClass:[MKPolyline class]]){
        MKPolylineView *polylineView = [[MKPolylineView alloc] initWithPolyline:overlay];
        polylineView.strokeColor = [UIColor greenColor];
        polylineView.lineWidth = 3.0;
        return polylineView;
    }
    else{
        MKCircleView *pointCircleView = [[MKCircleView alloc]initWithOverlay:overlay];
        pointCircleView.strokeColor = [UIColor blueColor];
        pointCircleView.lineWidth = 3;
        pointCircleView.alpha = .7;
        return pointCircleView;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationBar.title = self.routeName;
    for(int i = 0; i < [self.routeCoordinates count]; i++) {
        int count = [[self.routeCoordinates objectAtIndex:i] count];
        CLLocationCoordinate2D coords[count];
        for (int j = 0; j < count; j++){
            HawkBusLatitudeLongitude *latLong = [[self.routeCoordinates objectAtIndex:i] objectAtIndex:j];
            coords[j] = CLLocationCoordinate2DMake(latLong.latitude,latLong.longitude);
        }
        MKPolyline *routeLine = [MKPolyline polylineWithCoordinates:coords count:count];
        [_mapView addOverlay:routeLine];
    }
        for(HawkBusStop *stop in stopsAlongRoute){
            CLLocationCoordinate2D stopLocation;
            HawkBusLatitudeLongitude *latLong = [[HawkBusLatitudeLongitude alloc] initWithCoordinates:stop.stopLatitude longitude:stop.stopLongitude];
            stopLocation = CLLocationCoordinate2DMake(latLong.latitude,latLong.longitude);
            CLLocationDistance circleRadius = 7.0;
            MKCircle *stopCircle = [MKCircle circleWithCenterCoordinate:stopLocation radius:circleRadius];
            [stopCircle setTitle:stop.stopName];
            [stopCircle setSubtitle:stop.stopNumber];
            [_mapView addOverlay:stopCircle];
        }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	HawkBusClickedOnStopViewController * childVC = segue.destinationViewController;
	NSInteger selectedCellNum = [self.stopsTableView indexPathForSelectedRow].row;
    HawkBusStop *stop = [[HawkBusStop alloc] init];
    stop = [stopsAlongRoute objectAtIndex:selectedCellNum];
    childVC.nameString = stop.stopName;
    childVC.numberString = stop.stopNumber;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction) refreshPushed:(id)sender{
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
    return [stopsAlongRoute count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger cellnum = indexPath.row;
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stop"];
    HawkBusStop *currentStop = [HawkBusStop new];
    currentStop = [stopsAlongRoute objectAtIndex:cellnum];
	cell.textLabel.text = currentStop.stopName;
	cell.detailTextLabel.text = currentStop.stopNumber;
    
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
    [self.stopsTableView deselectRowAtIndexPath:[self.stopsTableView indexPathForSelectedRow] animated:YES];
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
