//
//  HawkBusStop.h
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HawkBusStop : NSObject
@property (strong, nonatomic) NSString * stopName;
@property (strong, nonatomic) NSString * stopNumber;
@property (nonatomic) double stopLatitude;
@property (nonatomic) double stopLongitude;
@property (strong, nonatomic) NSArray * stopRoutes;

- (id) initWithInformation: (NSString *) stopName stopNumber: (NSString *) stopNumber stopLatitude: (double) stopLatitude stopLongitude: (double) stopLongitude stopRoutes: (NSArray *) stopRoutes;

@end
