//
//  HawkBusStop.h
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface HawkBusStop : NSObject
@property (weak, nonatomic) NSString * stopName;
@property (weak, nonatomic) NSString * stopNumber;
@property (nonatomic) double stopLatitude;
@property (nonatomic) double stopLongitude;
@property (nonatomic) NSArray * stopRoutes;

- (id) initWithInformation: (NSString *) stopName stopNumber: (NSString *) stopNumber stopLatitude: (double) stopLatitude stopLongitude: (double) stopLongitude stopRoutes: (NSArray *) stopRoutes;
- (double) calculateDistanceFromCurrentLocation: (double) latitude longitude: (double) longitude;
- (NSComparisonResult) compare: (HawkBusStop *) otherStop location: (CLLocation *) location;
- (NSArray *) getStopRoutes;
@end
