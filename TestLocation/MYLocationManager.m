//
//  MYLocationManager.m
//  TestLocation
//
//  Created by liuyuning on 13-12-19.
//  Copyright (c) 2013年 liuyuning. All rights reserved.
//

#import "MYLocationManager.h"


@implementation MYLocationManager
MYLocationManager *g_MYLocation;
+ (MYLocationManager*)sharedInstance{
    if (nil == g_MYLocation) {
        g_MYLocation = [[MYLocationManager alloc] init];
    }
    return g_MYLocation;
}

- (id)init{
    self = [super init];
    if (self) {
        _locationManager = [[CLLocationManager alloc] init];
        _locationManager.delegate = self;
    }
    return self;
}

- (void)startTest{
    [_locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    NSLog(@"%@",newLocation.description);
    NSLog(@"%@",oldLocation);
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    NSLog(@"%d",status);
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"%@",error);
}

@end