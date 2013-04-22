//
//  HawkBusClickedOnRouteViewController.h
//  HawkBus
//
//  Created by uicsi10 on 4/20/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HawkBusLatitudeLongitude.h"

@interface HawkBusClickedOnRouteViewController : UIViewController
@property (weak, nonatomic) NSString *routeName;
@property (nonatomic) NSArray *routeCoordinates;
@property (nonatomic) HawkBusLatitudeLongitude *center;
@property (nonatomic) HawkBusLatitudeLongitude *neCoordinate;
@property (nonatomic) HawkBusLatitudeLongitude *swCoordinate;
@end
