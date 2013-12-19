//
//  ViewController.m
//  TestLocation
//
//  Created by liuyuning on 13-12-17.
//  Copyright (c) 2013年 liuyuning. All rights reserved.
//

#import "ViewController.h"
#import "MYLocationManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//The settings of CoreLocation authorized at "/var/root/Library/Caches/locationd/clients.plist"
//In entitlements add key "com.apple.locationd.preauthorized" and set "YES"

-(IBAction)actionTest:(id)sender{
    [[MYLocationManager sharedInstance] startTest];
}

@end
