//
//  MainVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "MainVC.h"

@interface MainVC ()

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showGreen:(id)sender
{
    [self performSegueWithIdentifier:@"showGreenVC" sender:self];
}

- (IBAction)showRed:(id)sender
{
    [self performSegueWithIdentifier:@"showRedVC" sender:self];
}

- (IBAction)showTest:(id)sender
{
    [self performSegueWithIdentifier:@"showTestVC" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
}

@end
