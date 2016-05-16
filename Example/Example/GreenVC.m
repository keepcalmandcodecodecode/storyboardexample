//
//  GreenVC.m
//  Example
//
//  Created by macmini1 on 09.05.16.
//  Copyright © 2016 easy. All rights reserved.
//

#import "GreenVC.h"

@interface GreenVC ()
@property (weak,nonatomic) IBOutlet UILabel *label;
@end

@implementation GreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureWith:(NSString*)name
{
    self.name = name;
    self.label.text = self.name;
}

@end
