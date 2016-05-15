//
//  PortraitVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "PortraitVC.h"
#import "AppDelegate.h"

@interface PortraitVC ()

@end

@implementation PortraitVC

- (BOOL)shouldAutorotate
{
    return UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation);
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    NSLog(@"Supported interface orientations");
    return UIInterfaceOrientationMaskPortrait;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    NSLog(@"preferred intreface orientations");
    return UIInterfaceOrientationPortrait;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if(UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
    {
        [UIViewController attemptRotationToDeviceOrientation];
    }
}


@end
