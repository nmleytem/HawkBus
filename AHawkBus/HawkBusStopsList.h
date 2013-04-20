//
//  HawkBusStopsList.h
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HawkBusStop.h"
#import <MapKit/MapKit.h>
@interface HawkBusStopsList : NSObject
- (NSInteger) numberOfStops;
- (NSString *) stopNameForIndex: (int) index;
- (NSString *) stopNumberForIndex: (int) index;
- (double) stopLatitudeForIndex: (int) index;
- (double) stopLongitudeForIndex: (int) index;
- (HawkBusStop *) objectAtIndex: (int) index;
- (void) sortByProximity: (double) latitude
    longitude: (double) longitude;
- (void) sortByProximityNew: (CLLocation *) location;
@end
