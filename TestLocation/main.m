//
//  main.m
//  TestLocation
//
//  Created by liuyuning on 13-12-17.
//  Copyright (c) 2013年 liuyuning. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "MYLocationManager.h"


int main(int argc, char *argv[])
{
    @autoreleasepool {
        
        if (0) {
            
            NSLog(@"bundleIdentifier:%@",[NSBundle mainBundle].bundleIdentifier);
            NSLog(@"bundlePath:%@",[NSBundle mainBundle].bundlePath);
            
            [[MYLocationManager sharedInstance] startTest];
            
            [[NSRunLoop currentRunLoop] run];
        }
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}




