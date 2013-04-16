//
//  HawkBusFirstViewController.h
//  HawkBus
//
//  Created by uicsi10 on 3/25/13.
//  Copyright (c) 2013 uicsi10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface HawkBusFirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UITableView *StopsListView;

@end
