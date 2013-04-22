//
//  HawkBusLatitudeLongitude.m
//  HawkBus
//
//  Created by uicsi10 on 4/21/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusLatitudeLongitude.h"

@implementation HawkBusLatitudeLongitude
- (HawkBusLatitudeLongitude *) initWithCoordinates: (double) latitude longitude: (double) longitude{
    self = [super init];
    if (self){
        _latitude = latitude;
        _longitude = longitude;
    }
    
    return self;
}
- (HawkBusLatitudeLongitude *) init{
    self = [super init];
    if (self){
        _latitude = 0.0;
        _longitude = 0.0;
    }
    return self;
}
@end
