//
//  HawkBusStop.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStop.h"

@implementation HawkBusStop
- (id) initWithInformation:(NSString *)stopName stopNumber:(NSString *)stopNumber stopLatitude:(double)stopLatitude stopLongitude:(double)stopLongitude stopRoutes:(NSArray *)stopRoutes{
    self = [super init];
    if (self){
        _stopName = stopName;
        _stopNumber = stopNumber;
        _stopLatitude = stopLatitude;
        _stopLongitude = stopLongitude;
        _stopRoutes = stopRoutes;
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
        _stopRoutes = [[NSArray alloc] init];
    }
    return self;
}
@end
