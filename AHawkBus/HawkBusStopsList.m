//
//  HawkBusStopsList.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStopsList.h"
#import "HawkBusStop.h"

@implementation HawkBusStopsList
NSMutableArray *theStops;
- (NSMutableArray *) theStops{
    if (!theStops){
        theStops = [[NSMutableArray alloc] init];
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"MacBride Hall" stopNumber:@"0120" stopLatitude:41.66246 stopLongitude:-91.53579]]; /**stopRoutes:[[NSArray alloc] initWithObjects:@"Art Building West/Studio Arts",@"Blue", @"East Campus Shuttle", @"Hawkeye Express", @"Hawkeye/Interdorm", @"Interdorm", @"Mayflower Shuttle", @"Pentacrest Night", @"Pentacrest", @"Studio Arts", nil]]]**/
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Clinton & Iowa" stopNumber:@"1030" stopLatitude:41.6607706 stopLongitude:-91.5346899]]; /**stopRoutes:[[NSArray alloc] initWithObjects:@"Art Building West/Studio Arts", @"East Campus Shuttle", @"Hawkeye Express", @"Hawkeye/Interdorm", @"Interdorm", @"Mayflower Shuttle", @"Pentacrest Night", @"Pentacrest", @"Red", @"Studio Arts", nil]]]**/
        [theStops addObject:[[HawkBusStop alloc]initWithInformation:@"Downtown Interchange - Schaeffer Hall" stopNumber:@"0001" stopLatitude:41.66017 stopLongitude:-91.5359]]; /**stopRoutes:[[NSArray alloc] initWithObjects:@"abwstart", @"blue", @"hwkex", @"hwkdrm", @"inter", @"mayshut", @"mts", @"pentnight", @"pent", @"red", @"studart",nil]]]**/
        [theStops addObject:[[HawkBusStop alloc] initWithInformation: @"Main Library" stopNumber:@"1050" stopLatitude:41.6595409 stopLongitude:-91.53775]] /**stopRoutes:[[NSArray alloc] initWithObjects:@"abwstart", @"hwkdrm", @"inter", @"mts", @"red", @"studart", nil]]]**/;
        /**theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]
        theStops addObject:[[HawkBusStop alloc] initWithInformation:<#(NSString *)#> stopNumber:<#(NSString *)#> stopLatitude:<#(double)#> stopLongitude:<#(double)#> stopRoutes:<#(NSArray *)#>]**/
    }
    return theStops;
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

- (HawkBusStop *) objectAtIndex: (int) index{
    return [self.theStops objectAtIndex:index];
}

- (void) sortByProximity: (double) latitude longitude: (double) longitude{
    [self.theStops sortUsingComparator:^NSComparisonResult(HawkBusStop *firstStop, HawkBusStop *secondStop) {
        return [firstStop compare:secondStop latitude:latitude longitude:longitude];
    }];
}
- (void) sortByProximityNew:(CLLocation *) location{
    [theStops sortUsingComparator:^NSComparisonResult(HawkBusStop *first, HawkBusStop *second) {
        return [first newCompare:second location:location];
    }];
    
}
                              
@end
