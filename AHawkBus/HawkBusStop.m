//
//  HawkBusStop.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStop.h"

@implementation HawkBusStop
- (id) initWithInformation:(NSString *)stopName stopNumber:(NSString *)stopNumber stopLatitude:(double)stopLatitude stopLongitude:(double)stopLongitude{
    self = [super init];
    if (self){
        _stopName = stopName;
        _stopNumber = stopNumber;
        _stopLatitude = stopLatitude;
        _stopLongitude = stopLongitude;
        //_stopRoutes = stopRoutes;
    }
    
    return self;
}
- (id) init{
    self = [super init];
    if (self){
        _stopName = @"";
        _stopNumber = @"";
        _stopLatitude = 0.0;
        _stopLongitude = 0.0;
        //_stopRoutes = [[NSArray alloc] init];
    }
    return self;
}
- (double) calculateDistanceFromCurrentLocation:(double)latitude longitude:(double)longitude{
    return sqrt(pow((_stopLatitude - latitude), 2.0) + pow((_stopLongitude - longitude),2.0));
}

- (NSComparisonResult) compare: (HawkBusStop *) otherStop
latitude: (double) latitude
longitude: (double) longitude{
    double thisDistance;
    double thatDistance;
    thisDistance = [self calculateDistanceFromCurrentLocation:latitude longitude:longitude];
    thatDistance = [otherStop calculateDistanceFromCurrentLocation:latitude longitude:longitude ];
    if (thisDistance > thatDistance)
        return NSOrderedDescending;
    else if (thisDistance < thatDistance)
        return NSOrderedAscending;
    else
        return NSOrderedSame;
}
- (NSComparisonResult) newCompare:(HawkBusStop *)otherStop location:(CLLocation *)location{
    //NSLog(@"Current location: %.8f, %.8f", location.coordinate.latitude, location.coordinate.longitude);
    CLLocationDegrees thisStopLatitude = self.stopLatitude;
    CLLocationDegrees thisStopLongitude = self.stopLongitude;
    CLLocation *thisStopLocation= [[CLLocation alloc] initWithLatitude:thisStopLatitude longitude:thisStopLongitude];
    CLLocationDistance thisDistance = [location distanceFromLocation:thisStopLocation];
    CLLocationDegrees otherStopLatitude = otherStop.stopLatitude;
    CLLocationDegrees otherStopLongitude = otherStop.stopLongitude;
    CLLocation *otherStopLocation = [[CLLocation alloc] initWithLatitude:otherStopLatitude longitude:otherStopLongitude];
    CLLocationDistance otherDistance = [location distanceFromLocation:otherStopLocation];
    if (thisDistance > otherDistance)
        return NSOrderedDescending;
    else if (thisDistance < otherDistance)
        return NSOrderedAscending;
    else
        return NSOrderedSame;
}
@end
