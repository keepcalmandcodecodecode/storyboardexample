//
//  LandscapeVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "LandscapeVC.h"

@interface LandscapeVC ()

@end

@implementation LandscapeVC

- (BOOL)shouldAutorotate
{
    return UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation);
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if(UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
    {
        [UIViewController attemptRotationToDeviceOrientation];
    }
}

@end
