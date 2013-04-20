//
//  HawkBusRoutesList.h
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HawkBusRoutesList : NSObject
- (NSInteger) numberOfRoutes;
- (NSString *) routeNameForIndex: (int) index;
- (NSString *) routeIDForIndex: (int) index;
- (NSArray *) locationsArrayForIndex: (int) index;
@end
