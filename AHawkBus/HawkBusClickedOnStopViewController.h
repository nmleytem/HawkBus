//
//  HawkBusFirstViewController.h
//  HawkBus
//
//  Created by uicsi10 on 3/25/13.
//  Copyright (c) 2013 uicsi10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface HawkBusClickedOnStopViewController : UIViewController
@property (strong,nonatomic) NSString * nameString;
@property (strong,nonatomic) NSString * numberString;
@property double latitude;
@property double longitude;
@property (strong, nonatomic) NSArray * stopsArray;
@end
