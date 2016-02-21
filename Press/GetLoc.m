//
//  GetLoc.m
//  getlocationfile
//
//  Created by Vita Xie on 2/20/16.
//  Copyright © 2016 Vita Xie. All rights reserved.
//

#import "GetLoc.h"

@implementation GetLoc

- (CLLocationManager*) setupManager
{
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    
    locationManager.delegate = self;
    return locationManager;
}

- (void)startStandardUpdates: (CLLocationManager *) locationManager;
{
    locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;//kCLLocationAccuracyKilometer;
    
    // Set a movement threshold for new events.
    locationManager.distanceFilter = 50; // meters
    
    [locationManager startUpdatingLocation];
    
}

-(void)fetchLoc: (CLLocationManager*)locationManager;
{
    [locationManager requestLocation];
    _latitude = _location.coordinate.latitude;
    _longitude = _location.coordinate.longitude;
    
}

@end


