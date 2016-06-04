//
//  RedRouter.m
//  Example
//
//  Created by macmini1 on 04.06.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "MainRouter.h"
#import "RedVC.h"
#import "GreenVC.h"
#import <RBStoryboardLink/RBStoryboardLink.h>

static NSString *const redSegueIdentifier = @"showRedVC";
static NSString *const greenSegueIdentifier = @"showGreenVC";

@implementation MainRouter
- (void)showRedVCFrom:(UIViewController*)sourceVC withDictionary:(NSDictionary *)destinationVCConfiguration
{
    
    YDPreparationBlock preparationBlock =  ^void(UIStoryboardSegue *segue) {
        RBStoryboardLink *link = segue.destinationViewController;
        RedVC *destinationVC = (RedVC*)link.scene;
        [destinationVC configureWith:destinationVCConfiguration[@"title"]];
        destinationVC.router = self;
    };
    [sourceVC performSegueWithIdentifier:redSegueIdentifier sender:self preparationBlock:preparationBlock];
}

- (void)showGreenVCFrom:(UIViewController*)sourceVC withDictionary:(NSDictionary *)destinationVCConfiguration
{
    YDPreparationBlock preparationBlock =  ^void(UIStoryboardSegue *segue) {
        RBStoryboardLink *link = segue.destinationViewController;
        GreenVC *destinationVC = (GreenVC*)link.scene;
        [destinationVC configureWith:destinationVCConfiguration[@"title"]];
        destinationVC.router = self;
    };
    [sourceVC performSegueWithIdentifier:greenSegueIdentifier sender:self preparationBlock:preparationBlock];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIViewController *sourceViewController = segue.sourceViewController;
    YDPreparationBlock block = [sourceViewController preparationBlockForSegue:segue];
    if (block)
    {
        block(segue);
    }
}

@end