//
//  HawkBusCustomAnnotation.m
//  HawkBus
//
//  Created by uicsi10 on 4/20/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusCustomAnnotation.h"

@implementation HawkBusCustomAnnotation
-(id) initWithCoordinate:(CLLocationCoordinate2D) coordinate{
    self=[super init];
    if(self){
        _coordinate=coordinate;
    }
    return self;
}
@end
