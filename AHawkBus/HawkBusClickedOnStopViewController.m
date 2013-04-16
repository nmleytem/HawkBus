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
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UINavigationItem *navigationBar;
@property (weak, nonatomic) IBOutlet UITableView *StopsListView;
@end

@implementation HawkBusClickedOnStopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void) viewWillAppear:(BOOL)animated{
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 41.6607706;
    zoomLocation.longitude= -91.5346899;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, METERS_PER_MILE, METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //Changes title of nav bar to that of the stop
    self.navigationBar.title = self.nameString;
    //Drops a point on the map of the stop location
    CLLocationCoordinate2D  stopPoint;
    stopPoint.latitude = self.latitude;
    stopPoint.longitude = self.longitude;
    /**AddressAnnotation *addAnnotation = [[AddressAnnotation alloc] initWithCoordinate:stopPoint];
    [self.mapView addAnnotation:addAnnotation];
    [addAnnotation release];**/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
