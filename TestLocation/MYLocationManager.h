//
//  MYLocationManager.h
//  TestLocation
//
//  Created by liuyuning on 13-12-19.
//  Copyright (c) 2013年 liuyuning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface MYLocationManager : NSObject<CLLocationManagerDelegate>{
    CLLocationManager *_locationManager;
}
+ (MYLocationManager*)sharedInstance;
- (void)startTest;

@end


