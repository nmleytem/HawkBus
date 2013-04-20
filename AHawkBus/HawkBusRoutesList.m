//
//  HawkBusRoutesList.m
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusRoutesList.h"
#import "HawkBusRoute.h"

@interface HawkBusRoutesList()
@end

@implementation HawkBusRoutesList
NSMutableArray *theRoutes;

- (NSMutableArray *) theRoutes{
    if(!theRoutes){
        theRoutes = [[NSMutableArray alloc] init];
        [theRoutes addObject:[[HawkBusRoute alloc] initWithInformation:@"ABW/Studio Arts" routeID:@"abwstart" geoLocations:[[NSArray alloc] initWithObjects:@"test",nil]]];
    }
    return theRoutes;
}

- (NSInteger) numberOfRoutes{
    return self.theRoutes.count;
}

- (NSString *) routeNameForIndex:(int)index{
    HawkBusRoute *route = [self.theRoutes objectAtIndex:index];
    return route.routeName;
}

- (NSString *) routeIDForIndex:(int)index{
    HawkBusRoute *route = [self.theRoutes objectAtIndex:index];
    return route.routeID;
}

- (NSArray *) locationsArrayForIndex:(int)index{
    NSArray *locations = [self.theRoutes objectAtIndex:index];
    return locations;
}
@end
