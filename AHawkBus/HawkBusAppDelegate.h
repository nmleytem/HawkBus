//
//  HawkBusAppDelegate.h
//  HawkBus
//
//  Created by uicsi10 on 3/25/13.
//  Copyright (c) 2013 uicsi10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HawkBusStopsList.h"
#import "HawkBusRoutesList.h"
#import <MapKit/MapKit.h>

HawkBusStopsList *stopsList;
HawkBusRoutesList *routesList;
CLLocationManager *locationManager;
CLLocation *location;
BOOL updatingLocation;
NSMutableArray *stopsAlongRoute;

@interface HawkBusAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end
