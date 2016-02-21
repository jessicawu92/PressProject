//
//  GetLoc.h
//  getlocationfile
//
//  Created by Vita Xie on 2/20/16.
//  Copyright © 2016 Vita Xie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>


@interface GetLoc : NSObject <CLLocationManagerDelegate>

@property(readonly, nonatomic, copy) CLLocation *location;
@property (readonly) float latitude;
@property (readonly) float longitude;

- (CLLocationManager*)setupManager;

- (void)startStandardUpdates: (CLLocationManager*)locationManager;

- (void)fetchLoc: (CLLocationManager*)locationManager;


@end

