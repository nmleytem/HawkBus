//
//  HawkBusCustomAnnotation.h
//  HawkBus
//
//  Created by uicsi10 on 4/20/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface HawkBusCustomAnnotation : NSObject
@property (nonatomic, weak) NSString *name;
@property (nonatomic, weak) NSString *description;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D) coordinate;

@end

