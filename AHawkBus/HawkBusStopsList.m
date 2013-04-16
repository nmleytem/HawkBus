//
//  HawkBusStopsList.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStopsList.h"
#import "HawkBusStop.h"
@interface HawkBusStopsList ()
@property (strong, nonatomic) NSMutableArray * theStops;
@end

@implementation HawkBusStopsList

- (NSMutableArray *) theStops{
    if (!_theStops){
        _theStops = [[NSMutableArray alloc] init];
        [_theStops addObject:[[HawkBusStop alloc] initWithInformation:@"MacBride Hall" stopNumber:@"0120" stopLatitude:41.66246 stopLongitude:-91.53579 stopRoutes:[[NSArray alloc] initWithObjects:@"abwstart",@"blue", @"ecs", @"hwkex", @"hwkdrm", @"inter", @"mayshut", @"pentnight", @"pent", @"studart", nil]]];
        [_theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Clinton & Iowa" stopNumber:@"1030" stopLatitude:41.6607706 stopLongitude:-91.5346899 stopRoutes:[[NSArray alloc] initWithObjects:@"abwstart", @"ecs", @"hwkex", @"hwkdrm", @"inter", @"mayshut", @"pentnight", @"pent", @"red", @"studart", nil]]];
        /**_theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        _theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]**/
    }
    return _theStops;
}
- (NSInteger) numberOfStops{
    return self.theStops.count;
}
- (NSString *) stopNameForIndex:(int) index{
    HawkBusStop *stop = [self.theStops objectAtIndex:index];
    return stop.stopName;
}
- (NSString *) stopNumberForIndex:(int) index{
    HawkBusStop *stop = [self.theStops objectAtIndex:index];
    return stop.stopNumber;
}
- (double) stopLatitudeForIndex:(int)index{
    HawkBusStop *stop = [self.theStops objectAtIndex:index];
    return stop.stopLatitude;
}
- (double) stopLongitudeForIndex:(int)index{
    HawkBusStop *stop = [self.theStops objectAtIndex:index];
    return stop.stopLongitude;
}
- (NSArray *) stopRoutesArrayForIndex:(int) index{
    HawkBusStop *stop = [self.theStops objectAtIndex:index];
    return stop.stopRoutes;
}
@end
