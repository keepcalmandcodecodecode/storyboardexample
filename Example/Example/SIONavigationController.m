//
//  SIONavigationController.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "SIONavigationController.h"

@interface SIONavigationController ()

@end

@implementation SIONavigationController

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}


- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController viewWillAppear:animated];
}

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [viewController viewDidAppear:animated];
}

@end
