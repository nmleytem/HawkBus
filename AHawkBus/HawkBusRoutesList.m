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
@property (strong, nonatomic) NSMutableArray *theRoutes;
@end

@implementation HawkBusRoutesList
- (NSMutableArray *) theRoutes{
    if(!_theRoutes){
        _theRoutes = [[NSMutableArray alloc] init];
        [_theRoutes addObject:[[HawkBusRoute alloc] initWithInformation:@"ABW/Studio Arts" routeID:@"abwstart"]];
    }
    return _theRoutes;
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
@end
