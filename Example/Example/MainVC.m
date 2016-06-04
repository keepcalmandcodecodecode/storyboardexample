//
//  MainVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "MainVC.h"
#import "RedVC.h"
#import "GreenVC.h"
#import <RBStoryboardLink/RBStoryboardLink.h>
#import "MainRouter.h"

@interface MainVC ()
@property (strong,nonatomic) MainRouter *router;
@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.router = [MainRouter new];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showGreen:(id)sender
{
    [self.router showGreenVCFrom:self withDictionary:@{@"title":@"green"}];
}

- (IBAction)showRed:(id)sender
{
    [self.router showRedVCFrom:self withDictionary:@{@"title":@"RED"}];
}

- (IBAction)showTest:(id)sender
{
    [self performSegueWithIdentifier:@"showTestVC" sender:self];
}



@end
