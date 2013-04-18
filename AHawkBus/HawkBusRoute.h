//
//  HawkBusRoute.h
//  HawkBus
//
//  Created by uicsi10 on 4/17/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HawkBusRoute : NSObject
@property (weak, nonatomic) NSString * routeName;
@property (weak, nonatomic) NSString * routeID;
//@property (strong, nonatomic) NSArray * stops;

- (id) initWithInformation: (NSString *) routeName routeID: (NSString *) routeID;
@end
