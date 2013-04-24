//
//  HawkBusAppDelegate.m
//  HawkBus
//
//  Created by uicsi10 on 3/25/13.
//  Copyright (c) 2013 uicsi10. All rights reserved.
//

#import "HawkBusAppDelegate.h"

@interface HawkBusAppDelegate () <CLLocationManagerDelegate>
@end
@implementation HawkBusAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    stopsList = [HawkBusStopsList new];
    routesList = [HawkBusRoutesList new];
    locationManager = [CLLocationManager new];
    [self getLocation];
    stopsAlongRoute = [NSMutableArray new];
    // Override point for customization after application launch.

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//Methods for getting location
- (void)startLocationManager
{
    if ([CLLocationManager locationServicesEnabled]) {
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
        [locationManager startUpdatingLocation];
        updatingLocation = YES;
        
        [self performSelector:@selector(didTimeOut:) withObject:nil afterDelay:10];
    }
}
- (void)stopLocationManager
{
    if (updatingLocation) {
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(didTimeOut:) object:nil];
        [locationManager stopUpdatingLocation];
        locationManager.delegate = nil;
        updatingLocation = NO;
        [stopsList sortByProximity:locationManager.location];
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
}
#pragma mark - CLLocationManagerDelegate
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
}
@end
