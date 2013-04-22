//
//  HawkBusLatitudeLongitude.h
//  HawkBus
//
//  Created by uicsi10 on 4/21/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HawkBusLatitudeLongitude : NSObject
@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
- (HawkBusLatitudeLongitude *) initWithCoordinates: (double) latitude longitude: (double) longitude;
- (HawkBusLatitudeLongitude *) init;
@end
