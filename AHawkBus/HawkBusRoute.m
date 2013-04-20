//
//  HawkBusRoute.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusRoute.h"

@implementation HawkBusRoute
- (id) initWithInformation:(NSString *)routeName routeID:(NSString *)routeID geoLocations: (NSArray *) geoLocations{
    self = [super init];
    if (self){
        _routeName = routeName;
        _routeID = routeID;
        _routeGeoLocations = geoLocations;
    }
    
    return self;
}
- (id) init{
    self = [super init];
    if (self){
        _routeName = @"";
        _routeID = @"";
        _routeGeoLocations = [[NSArray alloc] init];
    }
    return self;
}
@end
