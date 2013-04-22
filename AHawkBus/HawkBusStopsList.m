//
//  HawkBusStopsList.m
//  HawkBus
//
//  Created by uicsi10 on 4/16/13.
//  Copyright (c) 2013 Nick & WonJae. All rights reserved.
//

#import "HawkBusStopsList.h"

@implementation HawkBusStopsList
NSMutableArray *theStops;
- (NSMutableArray *) theStops{
    if (!theStops){
        theStops = [[NSMutableArray alloc] init];
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"MacBride Hall" stopNumber:@"0120" stopLatitude:41.66246 stopLongitude:-91.53579]];
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Clinton & Iowa" stopNumber:@"1030" stopLatitude:41.6607706 stopLongitude:-91.5346899]];
        [theStops addObject:[[HawkBusStop alloc]initWithInformation:@"Downtown Interchange - Schaeffer Hall" stopNumber:@"0001" stopLatitude:41.66017 stopLongitude:-91.5359]];
        [theStops addObject:[[HawkBusStop alloc] initWithInformation: @"Main Library" stopNumber:@"1050" stopLatitude:41.6595409 stopLongitude:-91.53775]];
        [theStops addObject:[[HawkBusStop alloc] initWithInformation: @"The Lodge" stopNumber:@"0320" stopLatitude:41.6474507 stopLongitude:-91.5491329]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Communications Center" stopNumber:@"1051" stopLatitude:41.6592585 stopLongitude:-91.53765]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Studio Arts Building" stopNumber:@"3200" stopLatitude:41.6415 stopLongitude:-91.55676]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hubbard Park" stopNumber:@"0146" stopLatitude:41.6613498 stopLongitude:-91.538504]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Art Building" stopNumber:@"2100" stopLatitude:41.66504 stopLongitude:-91.54094]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Theater Building" stopNumber:@"2106" stopLatitude:41.6662587 stopLongitude:-91.5405201]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hancher/North Riverside" stopNumber:@"2120" stopLatitude:41.6679058 stopLongitude:-91.5401033]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Riverside & River St" stopNumber:@"2105" stopLatitude:41.6660209 stopLongitude:-91.5406198]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Art Building West" stopNumber:@"2101" stopLatitude:41.66499 stopLongitude:-91.54106]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"EPB" stopNumber:@"0145" stopLatitude:41.6612 stopLongitude:-91.5403422]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"IMU" stopNumber:@"0125" stopLatitude:41.6623484 stopLongitude:-91.5376201]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"WCTC" stopNumber:@"2000" stopLatitude:41.65989 stopLongitude:-91.5517199]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Melrose Court" stopNumber:@"2071" stopLatitude:41.6568102 stopLongitude:-91.5471072]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Slater Hall" stopNumber:@"2081" stopLatitude:41.65841 stopLongitude:-91.5446599]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Law Building" stopNumber:@"2085" stopLatitude:41.6583197 stopLongitude:-91.5437977]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Burge" stopNumber:@"1016" stopLatitude:41.6656199 stopLongitude:-91.53451]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Court & Clinton" stopNumber:@"1039" stopLatitude:41.65658 stopLongitude:-91.5348551]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Mayflower Hall" stopNumber:@"1000" stopLatitude:41.6768614 stopLongitude:-91.5320297]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Park Road Bridge North" stopNumber:@"1006" stopLatitude:41.67157 stopLongitude:-91.5337499]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Levitt Center" stopNumber:@"2121" stopLatitude:41.6711169 stopLongitude:-91.53825]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hancher Lot West" stopNumber:@"2115" stopLatitude:41.6695146 stopLongitude:-91.5392598]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Student Health" stopNumber:@"0263" stopLatitude:41.6627141 stopLongitude:-91.5435109]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Newton Road Ramp" stopNumber:@"0257" stopLatitude:41.6634 stopLongitude:-91.5460029]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"VA Hospital" stopNumber:@"0253" stopLatitude:41.6626722 stopLongitude:-91.5486235]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Newton & Lincoln" stopNumber:@"0245" stopLatitude:41.6635701 stopLongitude:-91.5512409]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Carver Hawkeye Arena" stopNumber:@"0241" stopLatitude:41.6633888 stopLongitude:-91.5538508]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Clinton & College" stopNumber:@"1034" stopLatitude:41.6591417 stopLongitude:-91.53469]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Clinton Street Music" stopNumber:@"1038" stopLatitude:41.65675 stopLongitude:-91.5347]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Prentiss & Madison" stopNumber:@"1070" stopLatitude:41.65446 stopLongitude:-91.5375686]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Madison St - Lot 11" stopNumber:@"1064" stopLatitude:41.65603 stopLongitude:-91.53771]];
        
        [ theStops addObject:[[HawkBusStop alloc] initWithInformation:@"ERF" stopNumber:@"1060" stopLatitude:41.6573639 stopLongitude:-91.53766]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Sports Medicine Clinic North" stopNumber:@"3151" stopLatitude:41.6600267 stopLongitude:-91.5779493]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Recreation Fields North" stopNumber:@"3110" stopLatitude:41.66447 stopLongitude:-91.5784411]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Drive 1" stopNumber:@"3142" stopLatitude:41.6606 stopLongitude:-91.58017]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Drive 2" stopNumber:@"3144" stopLatitude:41.65947 stopLongitude:-91.5801999]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Drive 3" stopNumber:@"3146" stopLatitude:41.65836 stopLongitude:-91.58022]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Lot 1" stopNumber:@"3125" stopLatitude:41.6633731 stopLongitude:-91.5834706]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Recreation Fields South" stopNumber:@"3111" stopLatitude:41.66442 stopLongitude:-91.57842]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Court 1" stopNumber:@"3105" stopLatitude:41.6665514 stopLongitude:-91.5724806]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Court 2" stopNumber:@"3106" stopLatitude:41.6670389 stopLongitude:-91.5717894]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Softball Complex" stopNumber:@"0100" stopLatitude:41.6686704 stopLongitude:-91.565131]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Arena on Hawkins" stopNumber:@"2017" stopLatitude:41.6623203 stopLongitude:-91.5554711]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hall of Fame North" stopNumber:@"3155" stopLatitude:41.6599598 stopLongitude:91.5762718]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Prairie Meadow & Hawk Drive" stopNumber:@"3140" stopLatitude:41.66153 stopLongitude:-91.5799678]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawkins & Elliott" stopNumber:@"2014" stopLatitude:41.6621164 stopLongitude:-91.5541558]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Dental on Elliott" stopNumber:@"2040" stopLatitude:41.6630127 stopLongitude:-91.5540336]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Dental College" stopNumber:@"0246" stopLatitude:41.6634803 stopLongitude:-91.550992]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hardin Library" stopNumber:@"0254" stopLatitude:41.6626626 stopLongitude:-91.5483873]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"MERF" stopNumber:@"0263" stopLatitude:41.66328 stopLongitude:-91.5450209]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"PBDB" stopNumber:@"0264" stopLatitude:41.6624986 stopLongitude:-91.5436284]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Church Street South" stopNumber:@"1011" stopLatitude:41.6679699 stopLongitude:-91.5334452]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Church Street North" stopNumber:@"1010" stopLatitude:41.66802 stopLongitude:-91.5334528]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Currier" stopNumber:@"1015" stopLatitude:41.6659059 stopLongitude:-91.5346]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Papajohn BB" stopNumber:@"1021" stopLatitude:41.6626199 stopLongitude:-91.53464]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hawk Lot 2" stopNumber:@"3130" stopLatitude:41.6627145 stopLongitude:-91.5847817]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Rienow Hall" stopNumber:@"2080" stopLatitude:41.6585399 stopLongitude:-91.5447098]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Family Care" stopNumber:@"2070" stopLatitude:41.6569098 stopLongitude:-91.5473609]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Finkbine North" stopNumber:@"2030" stopLatitude:41.6619779 stopLongitude:41.66106]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Finkbine South" stopNumber:@"2031" stopLatitude:41.66106 stopLongitude:-91.56081]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Arena West - AM/PM" stopNumber:@"2022" stopLatitude:41.6624906 stopLongitude:-91.5576023]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Arena East - AM/PM" stopNumber:@"2020" stopLatitude:41.6621549 stopLongitude:-91.5563681]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Finkbine Entrance" stopNumber:@"2025" stopLatitude:41.6628792 stopLongitude:-91.5587402]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hancher Lot East" stopNumber:@"2114" stopLatitude:41.6694665 stopLongitude:-91.53921]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Hancher/Park Road" stopNumber:@"2110" stopLatitude:41.6710487 stopLongitude:-91.53757]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"VA Loop" stopNumber:@"2050" stopLatitude:41.6624269 stopLongitude:-91.5488606]];
        
        [theStops addObject:[[HawkBusStop alloc] initWithInformation:@"Park Road South" stopNumber:@"1005" stopLatitude:41.6714601 stopLongitude:-91.5337446]];
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
- (void) sortByProximity:(CLLocation *) location{
    [theStops sortUsingComparator:^NSComparisonResult(HawkBusStop *first, HawkBusStop *second) {
        return [first compare:second location:location];
    }];
    
}
                              
@end
