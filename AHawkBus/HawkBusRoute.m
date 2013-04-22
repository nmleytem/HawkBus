//
//  HawkBusRoute.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusRoute.h"

@implementation HawkBusRoute
- (id) initWithInformation:(NSString *)routeName routeID:(NSString *)routeID geoLocations: (NSArray *) geoLocations center: (HawkBusLatitudeLongitude *) center swCoordinate: (HawkBusLatitudeLongitude *) swCoordinate neCoordinate: (HawkBusLatitudeLongitude *) neCoordinate{
    self = [super init];
    if (self){
        _routeName = routeName;
        _routeID = routeID;
        _routeGeoLocations = geoLocations;
        _center = center;
        _swCoordinate = swCoordinate;
        _neCoordinate = neCoordinate;
    }
    
    return self;
}
- (id) init{
    self = [super init];
    if (self){
        _routeName = @"";
        _routeID = @"";
        _routeGeoLocations = [[NSArray alloc] init];
        _center = [[HawkBusLatitudeLongitude alloc] init];
        _swCoordinate = [[HawkBusLatitudeLongitude alloc] init];
        _neCoordinate = [[HawkBusLatitudeLongitude alloc] init];
    }
    return self;
}
@end
