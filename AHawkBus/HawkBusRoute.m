//
//  HawkBusRoute.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusRoute.h"

@implementation HawkBusRoute
- (id) initWithInformation:(NSString *)routeName routeID:(NSString *)routeID{
    self = [super init];
    if (self){
        _routeName = routeName;
        _routeID = routeID;
        //_stops = stops;
    }
    
    return self;
}
- (id) init{
    self = [super init];
    if (self){
        _routeName = @"";
        _routeID = @"";
        //_stops = [[NSArray alloc] init];
    }
    return self;
}
@end
