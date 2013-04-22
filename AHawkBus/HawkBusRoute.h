//
//  HawkBusRoute.h
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HawkBusLatitudeLongitude.h"

@interface HawkBusRoute : NSObject
@property (weak, nonatomic) NSString *routeName;
@property (weak, nonatomic) NSString *routeID;
@property (nonatomic) NSArray *routeGeoLocations;
@property (nonatomic) HawkBusLatitudeLongitude *center;
@property (nonatomic) HawkBusLatitudeLongitude *neCoordinate;
@property (nonatomic) HawkBusLatitudeLongitude *swCoordinate;
- (id) initWithInformation: (NSString *) routeName routeID: (NSString *) routeID geoLocations: (NSArray *) geoLocations center: (HawkBusLatitudeLongitude *) center swCoordinate: (HawkBusLatitudeLongitude *) swCoordinate neCoordinate: (HawkBusLatitudeLongitude *) neCoordinate;
@end
